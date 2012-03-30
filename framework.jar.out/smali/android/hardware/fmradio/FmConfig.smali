.class public Landroid/hardware/fmradio/FmConfig;
.super Ljava/lang/Object;
.source "FmConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FmConfig"

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_ALGORITHM:I = 0x800002b


# instance fields
.field private mBandLowerLimit:I

.field private mBandUpperLimit:I

.field private mChSpacing:I

.field private mEmphasis:I

.field private mRadioBand:I

.field private mRdsStd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z
    .locals 7
    .parameter "fd"
    .parameter "configSettings"

    .prologue
    const v6, 0x800002b

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    const-string v4, "FmConfig"

    const-string v5, "In fmConfigure"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const v4, 0x800000c

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getEmphasis()I

    move-result v5

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 155
    .local v1, re:I
    const v4, 0x800000d

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getRdsStd()I

    move-result v5

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 156
    const v4, 0x800000e

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getChSpacing()I

    move-result v5

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 158
    const-string/jumbo v4, "persist.fm.new.srch.algorithm"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 159
    .local v0, fmSrchAlg:Z
    if-eqz v0, :cond_1

    .line 160
    const-string v4, "FmConfig"

    const-string v5, "fmConfigure() : FM Srch Alg : NEW "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {p0, v6, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 167
    :goto_0
    if-gez v1, :cond_2

    .line 179
    :cond_0
    :goto_1
    return v2

    .line 164
    :cond_1
    const-string v4, "FmConfig"

    const-string v5, "fmConfigure() : FM Srch Alg : OLD "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {p0, v6, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getUpperLimit()I

    move-result v5

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setBandNative(III)I

    move-result v1

    .line 171
    if-ltz v1, :cond_0

    .line 174
    const v4, 0x8000007

    iget v5, p1, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 176
    if-ltz v1, :cond_0

    move v2, v3

    .line 179
    goto :goto_1
.end method


# virtual methods
.method public getChSpacing()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mChSpacing:I

    return v0
.end method

.method public getEmphasis()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mEmphasis:I

    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mBandLowerLimit:I

    return v0
.end method

.method public getRadioBand()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    return v0
.end method

.method public getRdsStd()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mRdsStd:I

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mBandUpperLimit:I

    return v0
.end method

.method public setChSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 116
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mChSpacing:I

    .line 117
    return-void
.end method

.method public setEmphasis(I)V
    .locals 0
    .parameter "emp"

    .prologue
    .line 108
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mEmphasis:I

    .line 109
    return-void
.end method

.method public setLowerLimit(I)V
    .locals 0
    .parameter "lowLimit"

    .prologue
    .line 132
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mBandLowerLimit:I

    .line 133
    return-void
.end method

.method public setRadioBand(I)V
    .locals 0
    .parameter "band"

    .prologue
    .line 100
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    .line 101
    return-void
.end method

.method public setRdsStd(I)V
    .locals 0
    .parameter "rdsStandard"

    .prologue
    .line 124
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mRdsStd:I

    .line 125
    return-void
.end method

.method public setUpperLimit(I)V
    .locals 0
    .parameter "upLimit"

    .prologue
    .line 140
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mBandUpperLimit:I

    .line 141
    return-void
.end method
