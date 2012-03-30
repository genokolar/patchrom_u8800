.class public Lcom/android/internal/telephony/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCard$3;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field protected static final LOG_TAG:Ljava/lang/String; = "RIL_UiccCard"


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

.field private mCdmaSubscriptionAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mGsmUmtsSubscriptionAppIndex:I

.field protected mHandler:Landroid/os/Handler;

.field private mImsSubscriptionAppIndex:I

.field private mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

.field private mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 1
    .parameter "c"
    .parameter "ci"
    .parameter "ics"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 205
    new-instance v0, Lcom/android/internal/telephony/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccCard$2;-><init>(Lcom/android/internal/telephony/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    .line 82
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/UiccCard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UiccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/UiccCard;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 290
    const-string v0, "RIL_UiccCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 294
    const-string v0, "RIL_UiccCard"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 8
    .parameter "isAdded"

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 175
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/internal/telephony/UiccCard$1;

    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/UiccCard$1;-><init>(Lcom/android/internal/telephony/UiccCard;)V

    .line 188
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 190
    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v6, 0x104040a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v6, 0x104040b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, message:Ljava/lang/String;
    :goto_1
    const v6, 0x104040c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, buttonTxt:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 201
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 202
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 203
    return-void

    .line 190
    .end local v0           #buttonTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    const v6, 0x1040407

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 192
    .restart local v5       #title:Ljava/lang/String;
    :cond_1
    const v6, 0x1040408

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 87
    const-string v4, "Disposing card"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .local v1, arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 89
    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->dispose()V

    .line 88
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0           #app:Lcom/android/internal/telephony/UiccCardApplication;
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .line 94
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 144
    const-string v0, "UiccCard finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 1
    .parameter "index"

    .prologue
    .line 264
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, p1

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 3
    .parameter "family"

    .prologue
    .line 245
    const/16 v0, 0x8

    .line 246
    .local v0, index:I
    sget-object v1, Lcom/android/internal/telephony/UiccCard$3;->$SwitchMap$com$android$internal$telephony$UiccManager$AppFamily:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccManager$AppFamily;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v1, v1, v0

    .line 260
    :goto_1
    return-object v1

    .line 248
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 249
    goto :goto_0

    .line 251
    :pswitch_1
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 252
    goto :goto_0

    .line 254
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mImsSubscriptionAppIndex:I

    goto :goto_0

    .line 260
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    return-object v0
.end method

.method public getCdmaSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaSubscriptionAppIndex:I

    return v0
.end method

.method public getGsmUmtsSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    return v0
.end method

.method public getNumApplications()I
    .locals 5

    .prologue
    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, count:I
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .local v1, arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 282
    .local v0, a:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 283
    add-int/lit8 v2, v2, 0x1

    .line 281
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    .end local v0           #a:Lcom/android/internal/telephony/UiccCardApplication;
    :cond_1
    return v2
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    return-object v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 230
    const/4 v1, 0x1

    .line 233
    :goto_1
    return v1

    .line 228
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 151
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 153
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 158
    :cond_0
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 162
    return-void
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 7
    .parameter "c"
    .parameter "ci"
    .parameter "ics"

    .prologue
    .line 97
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    if-eqz v2, :cond_1

    .line 98
    const-string v2, "Updated after destroyed! Fix me!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 102
    .local v1, oldState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    iget-object v2, p3, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 103
    iget-object v2, p3, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 104
    iget v2, p3, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v2, p0, Lcom/android/internal/telephony/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 105
    iget v2, p3, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v2, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 106
    iget v2, p3, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v2, p0, Lcom/android/internal/telephony/UiccCard;->mImsSubscriptionAppIndex:I

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " applications"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 114
    iget-object v2, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v3, Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v4, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/internal/telephony/UiccCardApplication;-><init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v3, v2, v0

    .line 111
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->dispose()V

    .line 121
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_1

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v2, v2, v0

    iget-object v3, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->update(Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_1
.end method
