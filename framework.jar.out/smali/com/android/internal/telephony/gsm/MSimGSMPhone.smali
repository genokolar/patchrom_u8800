.class public Lcom/android/internal/telephony/gsm/MSimGSMPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "MSimGSMPhone.java"


# static fields
.field private static final CALL_FORWARD_NOTIFICATION:I = 0x6

.field private static final CALL_FORWARD_NOTIFICATION_SUB2:I = 0x15


# instance fields
.field mNotificationManager:Landroid/app/NotificationManager;

.field mSubscription:I

.field mSubscriptionData:Lcom/android/internal/telephony/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "subscription"

    .prologue
    .line 62
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"
    .parameter "subscription"

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 51
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    .line 70
    iput p5, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    .line 72
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSimGSMPhone: constructor: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mNotificationManager:Landroid/app/NotificationManager;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmNumGsmKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmNumGsmKey:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmCountKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmCountKey:Ljava/lang/String;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mVmId:Ljava/lang/String;

    .line 81
    new-instance v1, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/gsm/MSimGSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 84
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->setProperties()V

    .line 90
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 121
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBSCRIPTION ACTIVATED : slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "subId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "subStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget-object v2, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->setProperties()V

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->updateIccAvailability()V

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateIccAvailability()V

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->updateRecords()V

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 140
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 1

    .prologue
    .line 143
    const-string v0, "SUBSCRIPTION DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->resetSubSpecifics()V

    .line 146
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 96
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 97
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/SubscriptionManager;->unregisterForSubscriptionActivated(ILandroid/os/Handler;)V

    .line 98
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/SubscriptionManager;->unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V

    .line 99
    return-void
.end method

.method protected getCallForwardingPreference()Z
    .locals 4

    .prologue
    .line 309
    const-string v2, "GSM"

    const-string v3, "Get callforwarding info from perferences"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 312
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_enabled_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 313
    .local v0, cf:Z
    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, operatorNumeric:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_0
    return-object v0
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    return v0
.end method

.method public getSubscriptionInfo()Lcom/android/internal/telephony/Subscription;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "defValue"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    iget v1, v1, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 280
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMessage(Landroid/os/Message;)V

    .line 117
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const-string v0, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->onSubscriptionActivated()V

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v0, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->log(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->onSubscriptionDeactivated()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initSubscriptionSpecifics()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/android/internal/telephony/gsm/MSimGsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/MSimGsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 180
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public resetSubSpecifics()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mImei:Ljava/lang/String;

    .line 150
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mImeiSv:Ljava/lang/String;

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->setVoiceMessageCount(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getCallForwardingIndicator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    if-nez v1, :cond_1

    const/4 v0, 0x6

    .line 155
    .local v0, notificationId:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 158
    .end local v0           #notificationId:I
    :cond_0
    return-void

    .line 153
    :cond_1
    const/16 v0, 0x15

    goto :goto_0
.end method

.method setCallForwardingPreference(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 297
    const-string v2, "GSM"

    const-string v3, "Set callforwarding info to perferences"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 299
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_enabled_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    .line 222
    return-void
.end method

.method protected setProperties()V
    .locals 4

    .prologue
    .line 186
    const-string v0, "gsm.current.phone-type"

    iget v1, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .parameter "imsi"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 286
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    return-void
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 275
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 9

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, currentDds:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, operatorNumeric:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "multi_sim_data_call"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 251
    :goto_0
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCurrentCarrierInProvider: mSubscription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getSubscription()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " currentDds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " operatorNumeric = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->getSubscription()I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 256
    :try_start_1
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "current"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 257
    .local v5, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v2, map:Landroid/content/ContentValues;
    const-string/jumbo v6, "numeric"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    const/4 v6, 0x1

    .line 265
    .end local v2           #map:Landroid/content/ContentValues;
    .end local v5           #uri:Landroid/net/Uri;
    :goto_1
    return v6

    .line 247
    :catch_0
    move-exception v4

    .line 248
    .local v4, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "GSM"

    const-string v7, "Exception Reading Dual Sim Data Subscription Value."

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 261
    .end local v4           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 262
    .local v1, e:Landroid/database/SQLException;
    const-string v6, "GSM"

    const-string v7, "Can\'t store current operator"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v1           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MSimGSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MSimGsmDataConnectionTracker;->update()V

    .line 217
    return-void
.end method
