.class public Landroid/hardware/fmradio/FmTransceiver;
.super Ljava/lang/Object;
.source "FmTransceiver.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static FMState:I = 0x0

.field public static final FMState_Rx_Turned_On:I = 0x1

.field public static final FMState_Srch_InProg:I = 0x3

.field public static final FMState_Turned_Off:I = 0x0

.field public static final FMState_Tx_Turned_On:I = 0x2

.field public static final FM_CHSPACE_100_KHZ:I = 0x1

.field public static final FM_CHSPACE_200_KHZ:I = 0x0

.field public static final FM_CHSPACE_50_KHZ:I = 0x2

.field public static final FM_DE_EMP50:I = 0x1

.field public static final FM_DE_EMP75:I = 0x0

.field public static final FM_EU_BAND:I = 0x1

.field public static final FM_JAPAN_STANDARD_BAND:I = 0x2

.field public static final FM_JAPAN_WIDE_BAND:I = 0x3

.field public static final FM_RDS_STD_NONE:I = 0x2

.field public static final FM_RDS_STD_RBDS:I = 0x0

.field public static final FM_RDS_STD_RDS:I = 0x1

.field protected static final FM_RX:I = 0x1

.field protected static final FM_TX:I = 0x2

.field public static final FM_USER_DEFINED_BAND:I = 0x4

.field public static final FM_US_BAND:I = 0x0

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_ANTENNA:I = 0x8000012

.field private static final V4L2_CID_PRIVATE_TAVARUA_SET_NOTCH_FILTER:I = 0x8000028

.field protected static sFd:I = 0x0

.field public static final subPwrLevel_FMRx_Starting:I = 0x4

.field public static final subPwrLevel_FMTurning_Off:I = 0x6

.field public static final subPwrLevel_FMTx_Starting:I = 0x5

.field public static final subSrchLevel_ScanInProg:I = 0x1

.field public static final subSrchLevel_SeekInPrg:I = 0x0

.field public static final subSrchLevel_SrchAbort:I = 0x4

.field public static final subSrchLevel_SrchComplete:I = 0x3

.field public static final subSrchLevel_SrchListInProg:I = 0x2


# instance fields
.field private final MUTE_EVENT:I

.field private final RDS_EVENT:I

.field private final READY_EVENT:I

.field private final SEEK_COMPLETE_EVENT:I

.field private final TAG:Ljava/lang/String;

.field private final TUNE_EVENT:I

.field private final V4L2_DEVICE:Ljava/lang/String;

.field protected mControl:Landroid/hardware/fmradio/FmRxControls;

.field protected mPowerMode:I

.field protected mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

.field protected mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

.field protected mTxEvents:Landroid/hardware/fmradio/FmTxEventListner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Landroid/hardware/fmradio/FmTransceiver;->FMState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->READY_EVENT:I

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TUNE_EVENT:I

    .line 130
    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->RDS_EVENT:I

    .line 131
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->MUTE_EVENT:I

    .line 132
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->SEEK_COMPLETE_EVENT:I

    .line 138
    const-string v0, "FmTransceiver"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TAG:Ljava/lang/String;

    .line 139
    const-string v0, "/dev/radio0"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->V4L2_DEVICE:Ljava/lang/String;

    return-void
.end method

.method public static getFMPowerState()I
    .locals 1

    .prologue
    .line 623
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->FMState:I

    return v0
.end method

.method static release(Ljava/lang/String;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 224
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-eqz v0, :cond_0

    .line 226
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 227
    const/4 v0, 0x0

    sput v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 228
    const-string v0, "FmTransceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turned off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    const-string v0, "FmTransceiver"

    const-string v1, "Error turning off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setFMPowerState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 601
    sput p0, Landroid/hardware/fmradio/FmTransceiver;->FMState:I

    .line 602
    return-void
.end method


# virtual methods
.method protected acquire(Ljava/lang/String;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 171
    const/4 v0, 0x1

    .line 172
    .local v0, bStatus:Z
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-gtz v1, :cond_1

    .line 173
    const-string v1, "/dev/radio0"

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->acquireFdNative(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 175
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-lez v1, :cond_0

    .line 176
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    .line 180
    :cond_0
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to Open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_1
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already Opened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public configure(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 4
    .parameter "configSettings"

    .prologue
    .line 464
    const/4 v1, 0x1

    .line 465
    .local v1, status:Z
    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v0

    .line 466
    .local v0, lowerFreq:I
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v1

    .line 468
    invoke-virtual {p0, v0}, Landroid/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v1

    .line 469
    return v1
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->fmOff(I)V

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;I)Z
    .locals 5
    .parameter "configSettings"
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 404
    const-string v2, "/dev/radio0"

    invoke-virtual {p0, v2}, Landroid/hardware/fmradio/FmTransceiver;->acquire(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    const-string v2, "FmTransceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turning on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3, p2}, Landroid/hardware/fmradio/FmRxControls;->fmOn(II)V

    .line 410
    const-string v2, "FmTransceiver"

    const-string v3, "Calling fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v0

    .line 412
    .local v0, status:Z
    if-nez v0, :cond_0

    .line 413
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 415
    sput v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    goto :goto_0
.end method

.method public getInternalAntenna()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 548
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 550
    .local v0, re:I
    if-ne v0, v1, :cond_0

    .line 553
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_0

    .line 271
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxEventListner;->startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    .line 272
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    .line 275
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerTransmitClient(Landroid/hardware/fmradio/FmTransmitterCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_0

    .line 338
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mTxEvents:Landroid/hardware/fmradio/FmTxEventListner;

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmTxEventListner;->startListner(ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V

    .line 339
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    .line 342
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAnalogMode(Z)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 525
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3, p1}, Landroid/hardware/fmradio/FmRxControls;->setAudioPath(IZ)I

    move-result v0

    .line 526
    .local v0, re:I
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setAnalogModeNative(Z)I

    move-result v0

    .line 527
    if-ne v0, v1, :cond_0

    .line 529
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInternalAntenna(Z)Z
    .locals 4
    .parameter "intAnt"

    .prologue
    .line 575
    if-eqz p1, :cond_0

    .line 576
    const/4 v0, 0x1

    .line 581
    .local v0, iAntenna:I
    :goto_0
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 583
    .local v1, re:I
    if-nez v1, :cond_1

    .line 584
    const/4 v2, 0x1

    .line 586
    :goto_1
    return v2

    .line 578
    .end local v0           #iAntenna:I
    .end local v1           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #iAntenna:I
    goto :goto_0

    .line 586
    .restart local v1       #re:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setNotchFilter(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 512
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    const v1, 0x8000028

    invoke-static {v0, v1, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setNotchFilterNative(IIZ)I

    .line 513
    return-void
.end method

.method public setStation(I)Z
    .locals 2
    .parameter "frequencyKHz"

    .prologue
    .line 493
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    invoke-virtual {v0, p1}, Landroid/hardware/fmradio/FmRxControls;->setFreq(I)V

    .line 494
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->setStation(I)V

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmRxEventListner;->stopListener()V

    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterTransmitClient()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mTxEvents:Landroid/hardware/fmradio/FmTxEventListner;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmTxEventListner;->stopListener()V

    .line 365
    const/4 v0, 0x1

    return v0
.end method
