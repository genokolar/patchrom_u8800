.class public Landroid/telephony/MSimTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "MSimTelephonyManager.java"


# static fields
.field private static sInstance:Landroid/telephony/MSimTelephonyManager;

.field protected static sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 65
    const-string/jumbo v0, "telephony.msim.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    move-result-object v0

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    .line 67
    return-void
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method private getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;
    .locals 1

    .prologue
    .line 592
    const-string/jumbo v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 243
    sget-boolean v3, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 255
    :goto_0
    return v2

    .line 245
    :cond_0
    const/4 v1, 0x0

    .line 247
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephonyMSim;
    :try_start_0
    const-string/jumbo v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v1

    .line 249
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephonyMSim;->getNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 253
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 255
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 268
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 160
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    .line 164
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 146
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 152
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "index"
    .parameter "defaultVal"

    .prologue
    .line 734
    const/4 v1, 0x0

    .line 735
    .local v1, propVal:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 738
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 739
    .local v2, values:[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 740
    aget-object v1, v2, p1

    .line 743
    .end local v2           #values:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "property"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 701
    const-string v3, ""

    .line 702
    .local v3, propVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 703
    .local v1, p:[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, prop:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 706
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 709
    :cond_0
    if-gez p1, :cond_1

    .line 726
    :goto_0
    return-void

    .line 711
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 712
    const-string v4, ""

    .line 713
    .local v4, str:Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 714
    aget-object v4, v1, v0

    .line 716
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 719
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 720
    if-eqz v1, :cond_4

    .line 721
    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_4

    .line 722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 725
    :cond_4
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 535
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getCallState()I

    move-result v1

    .line 543
    :goto_0
    return v1

    .line 537
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 540
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 541
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 543
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 648
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getCdmaEriIconIndex()I

    move-result v1

    .line 655
    :goto_0
    return v1

    .line 650
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getCdmaEriIconIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 653
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 654
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 655
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 667
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getCdmaEriIconMode()I

    move-result v1

    .line 674
    :goto_0
    return v1

    .line 669
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getCdmaEriIconMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    .line 672
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 673
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 674
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 684
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v1

    .line 691
    :goto_0
    return-object v1

    .line 686
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getCdmaEriText(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 689
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 690
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 691
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 468
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 475
    :goto_0
    return-object v1

    .line 470
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 473
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 475
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 124
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 141
    :goto_0
    return v2

    .line 127
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v1

    .line 128
    .local v1, telephony:Lcom/android/internal/telephony/ITelephonyMSim;
    if-eqz v1, :cond_1

    .line 129
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getActivePhoneType(I)I

    move-result v2

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 134
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 137
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0

    .line 138
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 141
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 558
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDataActivity()I

    move-result v1

    .line 566
    :goto_0
    return v1

    .line 560
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyMSim;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 563
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 564
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 566
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 580
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDataState()I

    move-result v1

    .line 587
    :goto_0
    return v1

    .line 582
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyMSim;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 585
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 586
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 587
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 752
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyMSim;->getDefaultSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 756
    :goto_0
    return v1

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 755
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 756
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 102
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 105
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 108
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 427
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 434
    :goto_0
    return-object v1

    .line 429
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 432
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 434
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 404
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 411
    :goto_0
    return-object v1

    .line 406
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 409
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 335
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    .line 343
    :goto_0
    return v1

    .line 337
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getLteOnCdmaMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 341
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;
    .locals 1

    .prologue
    .line 525
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfoMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 200
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 183
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 765
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyMSim;->getPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 769
    :goto_0
    return v1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 768
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 769
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 791
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyMSim;->getPreferredVoiceSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 795
    :goto_0
    return v1

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 794
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 795
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 355
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 362
    :goto_0
    return-object v1

    .line 357
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 360
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 362
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 309
    sget-boolean v1, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getSimState()I

    move-result v1

    .line 320
    :goto_0
    return v1

    .line 311
    :cond_0
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const/4 v1, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    const/4 v1, 0x6

    goto :goto_0

    .line 320
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 383
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 390
    :goto_0
    return-object v1

    .line 385
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 388
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 390
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 509
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 516
    :goto_0
    return-object v1

    .line 511
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 514
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 516
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 447
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 454
    :goto_0
    return-object v1

    .line 449
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 452
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 454
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 489
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getVoiceMessageCount()I

    move-result v1

    .line 496
    :goto_0
    return v1

    .line 491
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 494
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 496
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 285
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->hasIccCard()Z

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 288
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 292
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 294
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 215
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 626
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    .line 627
    invoke-super {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 640
    :goto_0
    return-void

    .line 630
    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 633
    .local v6, notifyNow:Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    iget-object v2, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 635
    .end local v6           #notifyNow:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 630
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_1
    const-string v1, "<unknown>"

    goto :goto_1

    .line 632
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 637
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 778
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->setPreferredDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 782
    :goto_0
    return v1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 781
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 782
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method
