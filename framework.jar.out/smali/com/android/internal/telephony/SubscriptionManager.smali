.class public Lcom/android/internal/telephony/SubscriptionManager;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;,
        Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;,
        Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    }
.end annotation


# static fields
.field private static final EVENT_ALL_CARD_INFO_AVAILABLE:I = 0x2

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x9

.field private static final EVENT_CARD_INFO_AVAILABLE:I = 0x0

.field private static final EVENT_CARD_INFO_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_CLEANUP_DATA_CONNECTION_DONE:I = 0x7

.field private static final EVENT_DISABLE_DATA_CONNECTION_DONE:I = 0x8

.field private static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0x6

.field private static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x3

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x4

.field private static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static NUM_SUBSCRIPTIONS:I = 0x0

.field public static final SUB_ACTIVATE_FAILED:Ljava/lang/String; = "ACTIVATE FAILED"

.field public static final SUB_ACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "ACTIVATE NOT SUPPORTED"

.field public static final SUB_ACTIVATE_SUCCESS:Ljava/lang/String; = "ACTIVATE SUCCESS"

.field public static final SUB_DEACTIVATE_FAILED:Ljava/lang/String; = "DEACTIVATE FAILED"

.field public static final SUB_DEACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "DEACTIVATE NOT SUPPORTED"

.field public static final SUB_DEACTIVATE_SUCCESS:Ljava/lang/String; = "DEACTIVATE SUCCESS"

.field public static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field private static final SUB_STATUS_ACTIVATED:I = 0x1

.field private static final SUB_STATUS_DEACTIVATED:I

.field private static USER_PREF_SUB_FIELDS:I

.field private static sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;


# instance fields
.field private mActivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mAllCardsStatusAvailable:Z

.field private mCardInfoAvailable:[Z

.field private mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentDds:I

.field private mCurrentSubscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActive:Z

.field private mDeactivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableDdsInProgress:Z

.field private mIsNewCard:[Z

.field private mQueuedDds:I

.field private mSetDdsCompleteMsg:Landroid/os/Message;

.field private mSetDdsRequired:Z

.field private mSetSubsModeRequired:Z

.field private mSetSubscriptionInProgress:Z

.field private mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

.field private mSubActivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubResult:[Ljava/lang/String;

.field private mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    .line 84
    const/4 v0, 0x6

    sput v0, Lcom/android/internal/telephony/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .parameter "context"
    .parameter "uiccManager"
    .parameter "ci"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 119
    iput-object v9, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    .line 122
    iput-boolean v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubsModeRequired:Z

    .line 124
    new-array v5, v8, [Z

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    .line 131
    iput-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 133
    iput-boolean v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    .line 139
    iput-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 143
    iput-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDataActive:Z

    .line 145
    new-array v5, v8, [Z

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    .line 149
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    .line 151
    sget v5, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    .line 195
    const-string v5, "Constructor - Enter"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 200
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->getUserPreferredSubs()V

    .line 202
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    .line 203
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 204
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v1, p0, v7, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v1, p0, v10, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v5, p0, v8, v9}, Lcom/android/internal/telephony/CardSubscriptionManager;->registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    iput-object p3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 210
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 211
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    :cond_1
    new-array v5, v8, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    .line 215
    new-array v5, v8, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    .line 216
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_2

    .line 217
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    .line 218
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 220
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    .line 221
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    .line 222
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 223
    .local v4, t:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 229
    .end local v4           #t:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In MSimProxyManager constructor current active dds is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 232
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    .line 233
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 234
    .restart local v4       #t:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    new-instance v6, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/android/internal/telephony/SubscriptionManager;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 236
    .end local v4           #t:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_4
    const-string v5, "Constructor - Exit"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 237
    return-void

    .line 124
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 145
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;
    .locals 1
    .parameter "subId"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/Subscription;

    return-object v0
.end method

.method private getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Z
    .locals 1
    .parameter "subId"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    return v0
.end method

.method private getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    .locals 1
    .parameter "subId"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/Subscription;

    iget-object v0, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionManager;
    .locals 2
    .parameter "context"
    .parameter "uiccMgr"
    .parameter "ci"

    .prologue
    .line 172
    const-string v0, "SubscriptionManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/internal/telephony/SubscriptionManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    .line 176
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    return-object v0
.end method

.method private getSetSubscriptionResults()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 560
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v1, v2, [Ljava/lang/String;

    .line 561
    .local v1, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    return-object v1
.end method

.method private getUserPreferredSubs()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 1273
    const/4 v1, 0x0

    .line 1275
    .local v1, errorOnParsing:Z
    new-instance v8, Lcom/android/internal/telephony/SubscriptionData;

    sget v9, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    iput-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    .line 1277
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget v8, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v3, v8, :cond_7

    .line 1278
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1280
    .local v6, strUserSub:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1281
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: strUserSub = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :try_start_0
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1287
    .local v5, splitUserSub:[Ljava/lang/String;
    array-length v8, v5

    sget v9, Lcom/android/internal/telephony/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    if-ne v8, v9, :cond_6

    .line 1288
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1289
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x0

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    .line 1291
    :cond_0
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1292
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 1294
    :cond_1
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1295
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x2

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1299
    :cond_2
    const/4 v8, 0x3

    :try_start_1
    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1300
    .local v7, subStatus:I
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    invoke-static {}, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v9

    aget-object v9, v9, v7

    iput-object v9, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1307
    .end local v7           #subStatus:I
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x4

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1314
    :goto_2
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x5

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1331
    .end local v5           #splitUserSub:[Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    if-eqz v1, :cond_5

    .line 1332
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",,,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, defaultUserSub:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1342
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    .line 1343
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 1344
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    .line 1345
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v9, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1346
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    iput v11, v8, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 1347
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    iput v11, v8, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 1350
    .end local v0           #defaultUserSub:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    iput v3, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 1352
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserPreferredSubs: mUserPrefSubs.subscription["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1277
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1301
    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1302
    .local v2, ex:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v9, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    :try_end_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 1324
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .end local v5           #splitUserSub:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1325
    .local v4, pe:Ljava/util/regex/PatternSyntaxException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: PatternSyntaxException while split : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1308
    .end local v4           #pe:Ljava/util/regex/PatternSyntaxException;
    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1309
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:m3gppIndex: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    goto/16 :goto_2

    .line 1315
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 1316
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:m3gpp2Index: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto/16 :goto_3

    .line 1321
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :cond_6
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: splitUserSub.length != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1322
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1355
    .end local v5           #splitUserSub:[Ljava/lang/String;
    .end local v6           #strUserSub:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private isAllCardsInfoAvailable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 762
    const/4 v4, 0x1

    .line 763
    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, v0, v2

    .line 764
    .local v1, available:Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move v4, v5

    .line 763
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 764
    goto :goto_1

    .line 766
    .end local v1           #available:Z
    :cond_1
    if-nez v4, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    if-eqz v7, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    return v6
.end method

.method private isAnyPendingActivateRequest(I)Z
    .locals 3
    .parameter "subId"

    .prologue
    .line 976
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Subscription;

    .line 977
    .local v0, newSub:Lcom/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 979
    const/4 v1, 0x1

    .line 981
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewCardAvailable()Z
    .locals 5

    .prologue
    .line 769
    const/4 v4, 0x0

    .line 770
    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-boolean v2, v0, v1

    .line 771
    .local v2, isNew:Z
    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 770
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 773
    .end local v2           #isNew:Z
    :cond_2
    return v4
.end method

.method private isPresentInActivatePendingList(Lcom/android/internal/telephony/Subscription;)Z
    .locals 6
    .parameter "userSub"

    .prologue
    .line 737
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 738
    .local v4, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Subscription;

    .line 739
    .local v0, actPendingSub:Lcom/android/internal/telephony/Subscription;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Subscription;->isSame(Lcom/android/internal/telephony/Subscription;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 740
    const/4 v5, 0x1

    .line 743
    .end local v0           #actPendingSub:Lcom/android/internal/telephony/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :goto_1
    return v5

    .line 737
    .restart local v0       #actPendingSub:Lcom/android/internal/telephony/Subscription;
    .restart local v4       #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 743
    .end local v0           #actPendingSub:Lcom/android/internal/telephony/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1387
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    return-void
.end method

.method private notifySubscriptionActivated(I)V
    .locals 1
    .parameter "subId"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1095
    return-void
.end method

.method private notifySubscriptionDeactivated(I)V
    .locals 1
    .parameter "subId"

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1087
    return-void
.end method

.method private printPendingActivateRequests()V
    .locals 7

    .prologue
    .line 824
    const-string v5, "ActivatePending Queue : "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 825
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 826
    .local v4, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Subscription;

    .line 827
    .local v3, newSub:Lcom/android/internal/telephony/Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    .end local v3           #newSub:Lcom/android/internal/telephony/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private printPendingDeactivateRequests()V
    .locals 7

    .prologue
    .line 835
    const-string v5, "DeactivatePending Queue : "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 837
    .local v4, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Subscription;

    .line 838
    .local v3, newSub:Lcom/android/internal/telephony/Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    .end local v3           #newSub:Lcom/android/internal/telephony/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private processActivateRequests()V
    .locals 2

    .prologue
    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processActivateRequests: mSetSubscriptionInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSetSubsModeRequired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubsModeRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 897
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    .line 898
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubsModeRequired:Z

    if-eqz v0, :cond_1

    .line 899
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->setSubscriptionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 900
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v0, :cond_0

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubsModeRequired:Z

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    goto :goto_0
.end method

.method private processAllCardsInfoAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, availableCards:I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 637
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 638
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->isCardAbsentOrError(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 637
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    :cond_2
    if-ne v0, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v2, :cond_3

    .line 645
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    .line 648
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isNewCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 651
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionManager;->notifyNewCardsAvailable()V

    .line 652
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 653
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 656
    :cond_4
    return-void
.end method

.method private processAllDataDisconnected(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 307
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 308
    .local v0, sub:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v2, v3

    .line 309
    .local v1, subId:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processAllDataDisconnected: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - subscriptionReadiness["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V

    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubPreferences()V

    .line 316
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 318
    :cond_0
    return-void
.end method

.method private processCardInfoAvailable(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 664
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 665
    .local v1, cardIndex:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput-boolean v12, v10, v11

    .line 671
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v2

    .line 673
    .local v2, cardSubInfo:Lcom/android/internal/telephony/SubscriptionData;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processCardInfoAvailable: cardIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n Card Sub Info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 676
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v0, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    .local v0, arr$:[Lcom/android/internal/telephony/Subscription;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v9, v0, v5

    .line 677
    .local v9, userSub:Lcom/android/internal/telephony/Subscription;
    iget v8, v9, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 678
    .local v8, subId:I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v3

    .line 680
    .local v3, currentSub:Lcom/android/internal/telephony/Subscription;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processCardInfoAvailable: subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n user pref sub = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n current sub   = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 684
    iget-object v10, v9, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v11, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v10, v11, :cond_0

    iget-object v10, v3, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v11, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-eq v10, v11, :cond_0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/Subscription;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionManager;->isPresentInActivatePendingList(Lcom/android/internal/telephony/Subscription;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 688
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processCardInfoAvailable: subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " need to activate!!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 693
    new-instance v7, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v7}, Lcom/android/internal/telephony/Subscription;-><init>()V

    .line 694
    .local v7, sub:Lcom/android/internal/telephony/Subscription;
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/SubscriptionData;->getSubscription(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 695
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v7, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 696
    iput v8, v7, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 697
    sget-object v10, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v10, v7, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 698
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .end local v7           #sub:Lcom/android/internal/telephony/Subscription;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 705
    .end local v3           #currentSub:Lcom/android/internal/telephony/Subscription;
    .end local v8           #subId:I
    .end local v9           #userSub:Lcom/android/internal/telephony/Subscription;
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput-boolean v12, v10, v11

    .line 706
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v0, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v9, v0, v5

    .line 707
    .restart local v9       #userSub:Lcom/android/internal/telephony/Subscription;
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/Subscription;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 708
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput-boolean v13, v10, v11

    .line 706
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 711
    .end local v9           #userSub:Lcom/android/internal/telephony/Subscription;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processCardInfoAvailable: mIsNewCard ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-boolean v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 714
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isAllCardsInfoAvailable()Z

    move-result v10

    if-nez v10, :cond_5

    .line 715
    const-string v10, "All cards info not available!! Waiting for all info before processing"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 734
    :cond_4
    return-void

    .line 719
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processCardInfoAvailable: mSetSubscriptionInProgress = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 722
    iget-boolean v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v10, :cond_6

    .line 723
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    .line 726
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isNewCardAvailable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 729
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionManager;->notifyNewCardsAvailable()V

    .line 730
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    array-length v10, v10

    if-ge v4, v10, :cond_4

    .line 731
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    aput-boolean v13, v10, v4

    .line 730
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private processCardInfoNotAvailable(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 782
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_2

    .line 783
    :cond_0
    const-string/jumbo v6, "processCardInfoNotAvailable - Exception"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 817
    :cond_1
    :goto_0
    return-void

    .line 787
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 788
    .local v1, cardIndex:Ljava/lang/Integer;
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    .line 790
    .local v4, reason:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processCardInfoNotAvailable on cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 793
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput-boolean v7, v8, v9

    .line 797
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v8, v8, v6

    if-nez v8, :cond_5

    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubsModeRequired:Z

    .line 798
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processCardInfoNotAvailable mSetSubsModeRequired = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubsModeRequired:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 802
    sget-object v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-eq v4, v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-ne v4, v6, :cond_6

    .line 806
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_6

    aget-object v5, v0, v2

    .line 807
    .local v5, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v6, v8, :cond_4

    .line 808
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V

    .line 809
    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 806
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_5
    move v6, v7

    .line 797
    goto :goto_1

    .line 814
    :cond_6
    sget-object v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-ne v4, v6, :cond_1

    .line 815
    iput-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    goto/16 :goto_0
.end method

.method private processCleanupDataConnectionDone()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDataActive:Z

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    .line 391
    return-void
.end method

.method private processDisableDataConnectionDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 374
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 377
    .local v0, msgSetDataSub:Landroid/os/Message;
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set DDS to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Calling cmd interface setDataSubscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 380
    return-void
.end method

.method private processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 325
    const/4 v0, 0x0

    .line 327
    .local v0, result:Z
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 329
    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    invoke-static {v1}, Lcom/android/internal/telephony/MSimPhoneFactory;->setDataSubscription(I)V

    .line 331
    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    if-eq v1, v2, :cond_0

    .line 334
    invoke-static {}, Lcom/android/internal/telephony/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/MSimProxyManager;->updateDataConnectionTracker(I)V

    .line 337
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    .line 340
    invoke-static {}, Lcom/android/internal/telephony/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/MSimProxyManager;->updateDataConnectionTracker(I)V

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSubscriptionSource is Successful  Enable Data Connectivity on Subscription "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/android/internal/telephony/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/MSimProxyManager;->enableDataConnectivity(I)V

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDataActive:Z

    .line 348
    const/4 v0, 0x1

    .line 357
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 362
    const-string v1, "Enable Data Connectivity Done!! Sending the cnf back!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 364
    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 366
    :cond_1
    return-void

    .line 354
    :cond_2
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSubscriptionSource Failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processSetSubscriptionModeDone()V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    .line 628
    return-void
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v8, 0x0

    .line 443
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;

    .line 444
    .local v3, setSubParam:Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x0

    .line 445
    .local v0, cause:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 446
    .local v4, subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    const/4 v1, 0x0

    .line 448
    .local v1, currentSub:Lcom/android/internal/telephony/Subscription;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_8

    .line 451
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_0

    .line 452
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 454
    .local v2, error:Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v5, :cond_0

    .line 456
    const-string v0, "DEACTIVATE NOT SUPPORTED"

    .line 460
    .end local v2           #error:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    iget-object v5, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_4

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subscription of SUB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Activate Failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 463
    if-nez v0, :cond_1

    .line 464
    const-string v0, "ACTIVATE FAILED"

    .line 466
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 467
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 470
    .restart local v1       #currentSub:Lcom/android/internal/telephony/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    :cond_2
    :goto_0
    const-string/jumbo v5, "set uicc subscription done. update the current subscriptions"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 530
    iget v5, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v5, v1, v4, v0}, Lcom/android/internal/telephony/SubscriptionManager;->updateCurrentSubscription(ILcom/android/internal/telephony/Subscription;Lcom/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;)V

    .line 534
    iget v5, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/SubscriptionManager;->saveUserPreferredSubscription(ILcom/android/internal/telephony/Subscription;)V

    .line 537
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    iget v6, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aput-object v0, v5, v6

    .line 539
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 553
    :cond_3
    :goto_1
    return-void

    .line 471
    :cond_4
    iget-object v5, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_7

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subscription of SUB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Deactivate Failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 478
    if-nez v0, :cond_5

    .line 479
    iget v5, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->isAnyPendingActivateRequest(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 480
    const-string v0, "ACTIVATE FAILED"

    .line 485
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_5
    :goto_2
    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 491
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 493
    .restart local v1       #currentSub:Lcom/android/internal/telephony/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    iget v6, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    if-ne v5, v6, :cond_2

    .line 497
    invoke-static {}, Lcom/android/internal/telephony/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/MSimProxyManager;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/MSimProxyManager;->enableDataConnectivity(I)V

    goto/16 :goto_0

    .line 487
    :cond_6
    const-string v0, "DEACTIVATE FAILED"

    goto :goto_2

    .line 500
    :cond_7
    const-string v5, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    :cond_8
    iget-object v5, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_9

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subscription of SUB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Activated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 507
    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 508
    const-string v0, "ACTIVATE SUCCESS"

    .line 509
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 512
    .restart local v1       #currentSub:Lcom/android/internal/telephony/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 513
    :cond_9
    iget-object v5, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_a

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subscription of SUB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Deactivated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 516
    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 517
    const-string v0, "DEACTIVATE SUCCESS"

    .line 518
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 520
    .restart local v1       #currentSub:Lcom/android/internal/telephony/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget v5, v3, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    goto/16 :goto_0

    .line 524
    :cond_a
    const-string v5, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v5

    if-nez v5, :cond_3

    .line 544
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 545
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubPreferences()V

    .line 547
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v5, :cond_3

    .line 548
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-direct {v6, v8, v7, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1
.end method

.method private processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 398
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 399
    .local v2, subId:Ljava/lang/Integer;
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v0, v3, v5

    .line 400
    .local v0, actStatus:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSubscriptionStatusChanged sub = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " actStatus = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    .line 404
    if-ne v0, v4, :cond_2

    .line 406
    iget-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    if-eqz v3, :cond_0

    .line 407
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    if-ne v3, v4, :cond_0

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataSubscription on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 411
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    iput v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    .line 412
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 415
    .local v1, msgSetDdsDone:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    aget-object v3, v3, v4

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 416
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    .line 419
    .end local v1           #msgSetDdsDone:Landroid/os/Message;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionActivated(I)V

    .line 436
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 403
    goto :goto_0

    .line 420
    :cond_2
    if-nez v0, :cond_4

    .line 424
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    if-ne v3, v4, :cond_3

    .line 425
    const-string v3, "Register for the all data disconnect"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/android/internal/telephony/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/MSimProxyManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/android/internal/telephony/MSimProxyManager;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 429
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V

    .line 430
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubPreferences()V

    .line 431
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    goto :goto_1

    .line 434
    :cond_4
    const-string v3, "handleSubscriptionStatusChanged INVALID"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V
    .locals 2
    .parameter "subId"

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Subscription;->clear()V

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1029
    return-void
.end method

.method private saveUserPreferredSubscription(ILcom/android/internal/telephony/Subscription;)V
    .locals 4
    .parameter "subIndex"
    .parameter "userPrefSub"

    .prologue
    .line 1359
    sget v1, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 1360
    :cond_0
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveUserPreferredSubscription: INVALID PARAMETERS: subIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userPrefSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :goto_0
    return-void

    .line 1366
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1367
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v1, v1, p1

    iput p1, v1, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 1369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p2, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p2, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, userSub:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveUserPreferredSubscription: userPrefSub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveUserPreferredSubscription: userSub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1382
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1369
    .end local v0           #userSub:Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto/16 :goto_1

    :cond_3
    const-string v1, ""

    goto/16 :goto_2

    :cond_4
    const-string v1, ""

    goto/16 :goto_3
.end method

.method private setSubscriptionMode()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1059
    const/4 v3, 0x0

    .line 1060
    .local v3, numSubsciptions:I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 1061
    .local v6, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Subscription;

    .line 1062
    .local v4, pendingSub:Lcom/android/internal/telephony/Subscription;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_0

    .line 1064
    add-int/lit8 v3, v3, 0x1

    .line 1060
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    .end local v4           #pendingSub:Lcom/android/internal/telephony/Subscription;
    .end local v6           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSubscriptionMode numSubsciptions = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1070
    if-lez v3, :cond_2

    sget v8, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-gt v3, v8, :cond_2

    .line 1071
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1074
    .local v5, setSubsModeDone:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v8, v7

    invoke-interface {v7, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setSubscriptionMode(ILandroid/os/Message;)V

    .line 1075
    const/4 v7, 0x1

    .line 1077
    .end local v5           #setSubsModeDone:Landroid/os/Message;
    :cond_2
    return v7
.end method

.method private startNextPendingActivateRequests()Z
    .locals 12

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->printPendingActivateRequests()V

    .line 945
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v6

    .local v6, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v11, v6, v7

    .line 946
    .local v11, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Subscription;

    .line 947
    .local v9, newSub:Lcom/android/internal/telephony/Subscription;
    if-eqz v9, :cond_0

    iget-object v0, v9, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    .line 948
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionManager;->validateActivationRequest(Lcom/android/internal/telephony/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 955
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/MSimProxyManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/MSimProxyManager;->checkAndUpdatePhoneObject(Lcom/android/internal/telephony/Subscription;)V

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startNextPendingActivateRequests: Activating SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 958
    new-instance v10, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;

    iget v0, v9, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v1, v9, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-direct {v10, p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/SubscriptionManager;ILcom/android/internal/telephony/Subscription$SubscriptionStatus;)V

    .line 959
    .local v10, setSubParam:Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x4

    invoke-static {p0, v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 962
    .local v5, msgSetUiccSubDone:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v1, v9, Lcom/android/internal/telephony/Subscription;->subId:I

    aget-object v0, v0, v1

    iget v1, v9, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v9}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v9, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v4, v9, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 969
    const/4 v0, 0x1

    .line 972
    .end local v5           #msgSetUiccSubDone:Landroid/os/Message;
    .end local v9           #newSub:Lcom/android/internal/telephony/Subscription;
    .end local v10           #setSubParam:Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    .end local v11           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private startNextPendingDeactivateRequests()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 849
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->printPendingDeactivateRequests()V

    .line 851
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v7

    .local v7, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v12, v7, v8

    .line 852
    .local v12, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Subscription;

    .line 853
    .local v10, newSub:Lcom/android/internal/telephony/Subscription;
    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    .line 854
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/SubscriptionManager;->validateDeactivationRequest(Lcom/android/internal/telephony/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 860
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startNextPendingDeactivateRequests: Need to deactivating SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 861
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    iget v1, v10, Lcom/android/internal/telephony/Subscription;->subId:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDataActive:Z

    if-eqz v0, :cond_2

    .line 866
    const-string v0, "Deactivate all the data calls if there is any"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 867
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 869
    .local v6, allDataCleanedUpMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/MSimProxyManager;->disableDataConnectivity(ILandroid/os/Message;)V

    .line 870
    iput-boolean v13, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    .end local v6           #allDataCleanedUpMsg:Landroid/os/Message;
    :goto_1
    move v0, v13

    .line 887
    .end local v10           #newSub:Lcom/android/internal/telephony/Subscription;
    .end local v12           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :goto_2
    return v0

    .line 872
    .restart local v10       #newSub:Lcom/android/internal/telephony/Subscription;
    .restart local v12       #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_2
    const-string/jumbo v0, "startNextPendingDeactivateRequests: Deactivating now"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 873
    new-instance v11, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;

    iget v0, v10, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v1, v10, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-direct {v11, p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/SubscriptionManager;ILcom/android/internal/telephony/Subscription$SubscriptionStatus;)V

    .line 874
    .local v11, setSubParam:Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x4

    invoke-static {p0, v0, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 877
    .local v5, msgSetUiccSubDone:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v1, v10, Lcom/android/internal/telephony/Subscription;->subId:I

    aget-object v0, v0, v1

    iget v1, v10, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v10}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v10, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v4, v10, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    goto :goto_1

    .line 887
    .end local v5           #msgSetUiccSubDone:Landroid/os/Message;
    .end local v10           #newSub:Lcom/android/internal/telephony/Subscription;
    .end local v11           #setSubParam:Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    .end local v12           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateCurrentSubscription(ILcom/android/internal/telephony/Subscription;Lcom/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;)V
    .locals 3
    .parameter "subId"
    .parameter "subscription"
    .parameter "subStatus"
    .parameter "cause"

    .prologue
    .line 986
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 988
    .local v0, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentSubscription: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 991
    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne p3, v1, :cond_1

    .line 992
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 998
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iput-object p3, v1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 999
    if-nez p4, :cond_0

    .line 1000
    const-string p4, "NO CHANGE IN SUBSCRIPTION"

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object p4, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1003
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1004
    return-void

    .line 994
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Subscription;->clear()V

    .line 996
    sget-object p3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    goto :goto_0
.end method

.method private updateSubPreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, activeSubCount:I
    const/4 v0, 0x0

    .line 575
    .local v0, activeSub:Lcom/android/internal/telephony/Subscription;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    .local v2, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 576
    .local v6, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_0

    .line 577
    add-int/lit8 v1, v1, 0x1

    .line 578
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    .line 575
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 584
    .end local v6           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    if-ne v1, v11, :cond_3

    .line 585
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateSubPreferences: only SUB:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is Active.  Update the default/voice/sms and data subscriptions"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 587
    iget v8, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/MSimPhoneFactory;->setVoiceSubscription(I)V

    .line 588
    iget v8, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/MSimPhoneFactory;->setSMSSubscription(I)V

    .line 589
    invoke-static {v10}, Lcom/android/internal/telephony/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 591
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateSubPreferences: current defaultSub = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 593
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateSubPreferences: current mCurrentDds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 594
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v8

    iget v9, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    if-eq v8, v9, :cond_2

    .line 595
    iget v8, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/MSimPhoneFactory;->setDefaultSubscription(I)V

    .line 598
    :cond_2
    iget v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    iget v9, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    if-eq v8, v9, :cond_3

    .line 604
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    aget-object v7, v8, v9

    .line 605
    .local v7, subId:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 606
    iget v8, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    iput v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    .line 607
    const/4 v8, 0x6

    iget v9, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 609
    .local v3, callback:Landroid/os/Message;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update setDataSubscription to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 610
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v9, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    aget-object v8, v8, v9

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 611
    iput-boolean v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    .line 621
    .end local v3           #callback:Landroid/os/Message;
    .end local v7           #subId:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_3
    :goto_1
    return-void

    .line 615
    .restart local v7       #subId:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_4
    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    .line 616
    iget v8, v0, Lcom/android/internal/telephony/Subscription;->subId:I

    iput v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    goto :goto_1
.end method

.method private updateSubscriptionReadiness(IZ)V
    .locals 3
    .parameter "subId"
    .parameter "ready"

    .prologue
    .line 1007
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1008
    .local v0, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSubscriptionReadiness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1011
    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1017
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    goto :goto_0
.end method

.method private validateActivationRequest(Lcom/android/internal/telephony/Subscription;)Z
    .locals 3
    .parameter "sub"

    .prologue
    .line 927
    iget-object v0, p1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    sget v1, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget v1, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    iget v2, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 933
    const/4 v0, 0x1

    .line 935
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDeactivationRequest(Lcom/android/internal/telephony/Subscription;)Z
    .locals 3
    .parameter "sub"

    .prologue
    .line 913
    iget-object v0, p1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    sget v1, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget v1, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    iget v2, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 919
    const/4 v0, 0x1

    .line 921
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActiveSubscriptionsCount()I
    .locals 8

    .prologue
    .line 1391
    const/4 v0, 0x0

    .line 1392
    .local v0, activeSubCount:I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 1393
    .local v4, sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_0

    .line 1394
    add-int/lit8 v0, v0, 0x1

    .line 1392
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1397
    .end local v4           #sub:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count of subs activated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return v0
.end method

.method public getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;
    .locals 1
    .parameter "subId"

    .prologue
    .line 1036
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 243
    :pswitch_0
    const-string v0, "EVENT_CARD_INFO_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 244
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->processCardInfoAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 248
    :pswitch_1
    const-string v0, "EVENT_CARD_INFO_NOT_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->processCardInfoNotAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 253
    :pswitch_2
    const-string v0, "EVENT_ALL_CARD_INFO_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processAllCardsInfoAvailable()V

    goto :goto_0

    .line 258
    :pswitch_3
    const-string v0, "EVENT_SET_SUBSCRIPTION_MODE_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processSetSubscriptionModeDone()V

    goto :goto_0

    .line 263
    :pswitch_4
    const-string v0, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 264
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 268
    :pswitch_5
    const-string v0, "EVENT_SUBSCRIPTION_STATUS_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 269
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 273
    :pswitch_6
    const-string v0, "EVENT_CLEANUP_DATA_CONNECTION_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processCleanupDataConnectionDone()V

    goto :goto_0

    .line 278
    :pswitch_7
    const-string v0, "EVENT_DISABLE_DATA_CONNECTION_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 279
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->processDisableDataConnectionDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 283
    :pswitch_8
    const-string v0, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 284
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 288
    :pswitch_9
    const-string v0, "SubscriptionManager"

    const-string v1, "EVENT_ALL_DATA_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->processAllDataDisconnected(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public isSetSubscriptionInProgress()Z
    .locals 1

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    .line 1049
    .local v0, currentSelSub:Lcom/android/internal/telephony/Subscription;
    iget-object v1, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method notifyNewCardsAvailable()V
    .locals 3

    .prologue
    .line 751
    const-string/jumbo v1, "notifyNewCardsAvailable"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v0, setSubscriptionIntent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SetSubscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 756
    const-string v1, "NOTIFY_NEW_CARD_AVAILABLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 758
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 759
    return-void
.end method

.method public declared-synchronized registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1251
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1252
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    monitor-exit p0

    return-void

    .line 1251
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "subId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1232
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1233
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 1234
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1235
    monitor-exit v2

    .line 1236
    return-void

    .line 1235
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "subId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1212
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1213
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 1214
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1215
    monitor-exit v2

    .line 1216
    return-void

    .line 1215
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 3
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSubscription: mCurrentDds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1188
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 1195
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    .line 1196
    iget-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDisableDdsInProgress:Z

    if-nez v1, :cond_0

    .line 1197
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1198
    .local v0, allDataDisabledMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/MSimProxyManager;->disableDataConnectivity(ILandroid/os/Message;)V

    .line 1199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 1201
    .end local v0           #allDataDisabledMsg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z
    .locals 11
    .parameter "subData"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 1123
    const/4 v5, 0x0

    .line 1129
    .local v5, ret:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v8, :cond_0

    .line 1176
    :goto_0
    return v7

    .line 1133
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v9, "NO CHANGE IN SUBSCRIPTION"

    aput-object v9, v8, v7

    .line 1134
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v8, "NO CHANGE IN SUBSCRIPTION"

    aput-object v8, v7, v10

    .line 1137
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v6, v0, v2

    .line 1142
    .local v6, subId:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/Subscription;->equals(Lcom/android/internal/telephony/Subscription;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1143
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v8, :cond_3

    .line 1144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to deactivate current SUB :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1145
    new-instance v4, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v4}, Lcom/android/internal/telephony/Subscription;-><init>()V

    .line 1146
    .local v4, newSub:Lcom/android/internal/telephony/Subscription;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1147
    sget-object v7, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v7, v4, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1148
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    .end local v4           #newSub:Lcom/android/internal/telephony/Subscription;
    :cond_1
    :goto_2
    iget-object v7, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v8, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v8, :cond_2

    .line 1155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to activate new SUB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1156
    new-instance v4, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v4}, Lcom/android/internal/telephony/Subscription;-><init>()V

    .line 1157
    .restart local v4       #newSub:Lcom/android/internal/telephony/Subscription;
    iget-object v7, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1158
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    .end local v4           #newSub:Lcom/android/internal/telephony/Subscription;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1149
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v8, :cond_1

    iget-object v7, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v8, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v8, :cond_1

    goto :goto_2

    .line 1163
    .end local v6           #subId:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v7, :cond_5

    .line 1164
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v1

    .line 1165
    .local v1, deactivateInProgress:Z
    if-eqz v1, :cond_7

    .line 1166
    iput-boolean v10, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 1172
    .end local v1           #deactivateInProgress:Z
    :cond_5
    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v7, :cond_6

    .line 1174
    const/4 v5, 0x1

    :cond_6
    move v7, v5

    .line 1176
    goto/16 :goto_0

    .line 1168
    .restart local v1       #deactivateInProgress:Z
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    goto :goto_3
.end method

.method public declared-synchronized unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    monitor-exit p0

    return-void

    .line 1260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterForSubscriptionActivated(ILandroid/os/Handler;)V
    .locals 2
    .parameter "subId"
    .parameter "h"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 1240
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1241
    monitor-exit v1

    .line 1242
    return-void

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V
    .locals 2
    .parameter "subId"
    .parameter "h"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 1220
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1221
    monitor-exit v1

    .line 1222
    return-void

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
