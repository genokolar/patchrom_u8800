.class public abstract Lcom/android/internal/telephony/DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnection$1;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/DataConnection$DcQosActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;,
        Lcom/android/internal/telephony/DataConnection$CallSetupException;,
        Lcom/android/internal/telephony/DataConnection$FailCause;,
        Lcom/android/internal/telephony/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    }
.end annotation


# static fields
.field protected static final BASE:I = 0x40000

.field protected static final DBG:Z = true

.field protected static final EVENT_CONNECT:I = 0x40000

.field protected static final EVENT_DEACTIVATE_DONE:I = 0x40003

.field protected static final EVENT_DISCONNECT:I = 0x40004

.field protected static final EVENT_GET_LAST_FAIL_DONE:I = 0x40002

.field protected static final EVENT_LOG_BAD_DNS_ADDRESS:I = 0xc3b4

.field protected static final EVENT_QOS_DISABLE:I = 0x40020

.field protected static final EVENT_QOS_DISABLE_DONE:I = 0x40021

.field protected static final EVENT_QOS_ENABLE:I = 0x4001e

.field protected static final EVENT_QOS_ENABLE_DONE:I = 0x4001f

.field protected static final EVENT_QOS_GET_STATUS:I = 0x40028

.field protected static final EVENT_QOS_GET_STATUS_DONE:I = 0x40029

.field protected static final EVENT_QOS_IND:I = 0x4002a

.field protected static final EVENT_QOS_MODIFY:I = 0x40022

.field protected static final EVENT_QOS_MODIFY_DONE:I = 0x40023

.field protected static final EVENT_QOS_RESUME:I = 0x40026

.field protected static final EVENT_QOS_RESUME_DONE:I = 0x40027

.field protected static final EVENT_QOS_SUSPEND:I = 0x40024

.field protected static final EVENT_QOS_SUSPEND_DONE:I = 0x40025

.field protected static final EVENT_RIL_CONNECTED:I = 0x40005

.field protected static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x40001

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final VDBG:Z

.field protected static mCount:I

.field protected static mCountLock:Ljava/lang/Object;


# instance fields
.field protected cid:I

.field protected createTime:J

.field protected lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected lastFailTime:J

.field protected mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

.field protected mApn:Lcom/android/internal/telephony/DataProfile;

.field private mApnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mCapabilities:Landroid/net/LinkCapabilities;

.field private mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

.field private mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

.field private mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

.field private mId:I

.field private mInPartialRetry:Z

.field private mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field private mPartialSuccess:Z

.field private mPendingProtocol:Ljava/lang/String;

.field private mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

.field protected mQosFlowIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReconnectIntent:Landroid/app/PendingIntent;

.field private mRefCount:I

.field private mRetryMgr:Lcom/android/internal/telephony/RetryManager;

.field protected mRetryOverride:I

.field protected mRilVersion:I

.field protected mTag:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnection;->mCountLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;)V
    .locals 4
    .parameter "phone"
    .parameter "name"
    .parameter "id"
    .parameter "rm"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    .line 77
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 80
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    .line 83
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    .line 84
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    .line 243
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    .line 245
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 246
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCapabilities:Landroid/net/LinkCapabilities;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    .line 251
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    .line 845
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    .line 941
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    .line 1043
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    .line 1194
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    .line 1346
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    .line 1391
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    .line 1436
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    .line 269
    const-string v0, "DataConnection constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 271
    iput p3, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    .line 272
    iput-object p4, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 273
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 275
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->setDbg(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    .line 286
    const-string v0, "DataConnection constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DataConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActivatingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->getSuggestedRetryTime(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/DataConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/telephony/DataConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/internal/telephony/DataConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcQosActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnection;->tearDownQos()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/DataConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/DataConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/internal/telephony/DataConnection;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return v0
.end method

.method static synthetic access$510(Lcom/android/internal/telephony/DataConnection;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/DataConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnection;->isPartialSuccess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private checkAndUpdatePartialProtocolFailure(Landroid/net/LinkProperties;)V
    .locals 5
    .parameter "lp"

    .prologue
    const/4 v4, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getDataCallProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IPV4V6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndUpdatePartialProtocolFailure() LP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->isV4AddrPresent(Landroid/net/LinkProperties;)Z

    move-result v0

    .line 642
    .local v0, isIpv4Connected:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->isV6AddrPresent(Landroid/net/LinkProperties;)Z

    move-result v1

    .line 645
    .local v1, isIpv6Connected:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 646
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: partial data call failure, isIpv4Connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isIpv6Connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 662
    .end local v0           #isIpv4Connected:Z
    .end local v1           #isIpv6Connected:Z
    :cond_2
    :goto_0
    return-void

    .line 652
    .restart local v0       #isIpv4Connected:Z
    .restart local v1       #isIpv6Connected:Z
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 653
    const-string v2, "Dual-IP call successful."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 655
    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    .line 656
    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    goto :goto_0

    .line 658
    :cond_4
    const-string v2, "Error: Both v4 and v6 calls have failed."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSuggestedRetryTime(Landroid/os/AsyncResult;)I
    .locals 3
    .parameter "ar"

    .prologue
    .line 572
    const/4 v1, -0x1

    .line 573
    .local v1, retry:I
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 574
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataCallState;

    .line 575
    .local v0, response:Lcom/android/internal/telephony/DataCallState;
    iget v1, v0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 577
    .end local v0           #response:Lcom/android/internal/telephony/DataCallState;
    :cond_0
    return v1
.end method

.method private handleErrorCodes(Lcom/android/internal/telephony/DataCallState;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 547
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 548
    .local v0, lp:Landroid/net/LinkProperties;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/DataCallState;->setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 551
    iget v1, p1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 552
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->isV4AddrPresent(Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    const-string v1, "IP"

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    .line 566
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingProtocol set to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 569
    :cond_1
    return-void

    .line 558
    :cond_2
    iget v1, p1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 559
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->isV6AddrPresent(Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    const-string v1, "IPV6"

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    goto :goto_0
.end method

.method private isPartialSuccess()Z
    .locals 1

    .prologue
    .line 1832
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    return v0
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 5
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 332
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .line 333
    .local v0, connectionCompletedMsg:Landroid/os/Message;
    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 338
    .local v1, timeStamp:J
    iget v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 340
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p2, v3, :cond_1

    .line 341
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 342
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 349
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyConnectionCompleted at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 344
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 345
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 346
    new-instance v3, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/DataConnection$CallSetupException;-><init>(I)V

    invoke-static {v0, p2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .locals 3
    .parameter "dp"

    .prologue
    .line 362
    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 363
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 368
    .local v0, msg:Landroid/os/Message;
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 369
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 371
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyDisconnectCompleted DisconnectParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 5
    .parameter "ar"

    .prologue
    .line 507
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataCallState;

    .line 508
    .local v1, response:Lcom/android/internal/telephony/DataCallState;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 511
    .local v0, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetupConnectionCompleted failed, ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 517
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 520
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 521
    .local v2, result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 543
    :goto_0
    return-object v2

    .line 522
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_0
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 523
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0

    .line 525
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 526
    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    goto :goto_0

    .line 528
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_3
    iget v3, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-eq v3, v4, :cond_4

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: onSetupConnectionCompleted is stale cp.tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 532
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0

    .line 533
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    if-eqz v3, :cond_5

    .line 534
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 535
    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 536
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->handleErrorCodes(Lcom/android/internal/telephony/DataCallState;)V

    goto :goto_0

    .line 538
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetupConnectionCompleted received DataCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 539
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    iput v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 540
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v3

    iget-object v2, v3, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0
.end method

.method private setLinkProperties(Lcom/android/internal/telephony/DataCallState;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 6
    .parameter "response"
    .parameter "lp"

    .prologue
    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, okToUseSystemPropertyDns:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, propertyPrefix:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 586
    .local v0, dnsServers:[Ljava/lang/String;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 587
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v1

    .line 591
    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/DataCallState;->setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v3

    return-object v3
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x0

    const v6, 0x40003

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, discReason:I
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 298
    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 299
    .local v2, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v3, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 300
    .local v3, m:Landroid/os/Message;
    iget-object v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    const-string/jumbo v5, "radioTurnedOff"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    const/4 v1, 0x1

    .line 306
    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local v3           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    const-string/jumbo v4, "tearDownData radio is on, call deactivateDataCall"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 308
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 314
    :goto_1
    return-void

    .line 302
    .restart local v2       #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .restart local v3       #m:Landroid/os/Message;
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    const-string/jumbo v5, "pdpReset"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    const/4 v1, 0x2

    goto :goto_0

    .line 310
    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local v3           #m:Landroid/os/Message;
    :cond_2
    const-string/jumbo v4, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 311
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p1, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 312
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private tearDownQos()V
    .locals 6

    .prologue
    .line 320
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Integer;

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 321
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->qosRelease(I)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v2           #id:I
    :cond_0
    return-void
.end method

.method private updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .parameter "newState"

    .prologue
    .line 605
    new-instance v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    .line 607
    .local v0, result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    if-nez p1, :cond_0

    .line 632
    :goto_0
    return-object v0

    .line 610
    :cond_0
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 613
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->setLinkProperties(Lcom/android/internal/telephony/DataCallState;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 614
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    if-eq v1, v2, :cond_1

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLinkProperty failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 621
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 622
    const-string/jumbo v1, "updateLinkProperty old != new"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 626
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 628
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->checkAndUpdatePartialProtocolFailure(Landroid/net/LinkProperties;)V

    goto :goto_0
.end method


# virtual methods
.method public bringUp(Landroid/os/Message;Lcom/android/internal/telephony/DataProfile;)V
    .locals 2
    .parameter "onCompletedMsg"
    .parameter "apn"

    .prologue
    .line 1452
    const/high16 v0, 0x4

    new-instance v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    invoke-direct {v1, p2, p1}, Lcom/android/internal/telephony/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/DataProfile;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1453
    return-void
.end method

.method protected clearSettings()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 484
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 486
    iput-wide v4, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 487
    iput-wide v4, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 488
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 489
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    .line 490
    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 491
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 493
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 494
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    .line 495
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    .line 496
    iput-object v3, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    .line 497
    iput-object v3, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    .line 498
    return-void
.end method

.method public configureRetry(III)Z
    .locals 1
    .parameter "maxRetryCount"
    .parameter "retryTime"
    .parameter "randomizationTime"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    move-result v0

    return v0
.end method

.method public configureRetry(Ljava/lang/String;)Z
    .locals 1
    .parameter "configStr"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getDataCallProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1799
    const/4 v0, 0x0

    .line 1800
    .local v0, protocol:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1801
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v1, Lcom/android/internal/telephony/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 1806
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    if-nez v1, :cond_1

    .end local v0           #protocol:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1803
    .restart local v0       #protocol:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v1, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    goto :goto_0

    .line 1806
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    goto :goto_1
.end method

.method public getDataConnectionId()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    return v0
.end method

.method public getQosStatus(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1487
    const v0, 0x40028

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1488
    return-void
.end method

.method protected getRadioTechnology(I)I
    .locals 3
    .parameter "defaultRadioTechnology"

    .prologue
    .line 376
    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 377
    move v0, p1

    .line 381
    .local v0, radioTechnology:I
    :goto_0
    return v0

    .line 379
    .end local v0           #radioTechnology:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    .restart local v0       #radioTechnology:I
    goto :goto_0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v0

    return v0
.end method

.method public getRetryTimer()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v0

    return v0
.end method

.method public increaseRetryCount()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 430
    return-void
.end method

.method protected abstract isDnsOk([Ljava/lang/String;)Z
.end method

.method public isInactive()Z
    .locals 3

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1778
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 1777
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQosAvailable()Z
    .locals 3

    .prologue
    .line 1786
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1787
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 1786
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetryForever()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->isRetryForever()Z

    move-result v0

    return v0
.end method

.method public isRetryNeeded()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v0

    return v0
.end method

.method public isV4AddrPresent(Landroid/net/LinkProperties;)Z
    .locals 4
    .parameter "lp"

    .prologue
    .line 1810
    const/4 v0, 0x0

    .line 1811
    .local v0, found:Z
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1812
    .local v2, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 1813
    const/4 v0, 0x1

    .line 1817
    .end local v2           #linkAddr:Landroid/net/LinkAddress;
    :cond_1
    return v0
.end method

.method public isV6AddrPresent(Landroid/net/LinkProperties;)Z
    .locals 4
    .parameter "lp"

    .prologue
    .line 1821
    const/4 v0, 0x0

    .line 1822
    .local v0, found:Z
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1823
    .local v2, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    .line 1824
    const/4 v0, 0x1

    .line 1828
    .end local v2           #linkAddr:Landroid/net/LinkAddress;
    :cond_1
    return v0
.end method

.method public isValidQos(I)Z
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
.end method

.method protected onQosGetStatus(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get QoS Status, qosId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40029

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->getQosStatus(ILandroid/os/Message;)V

    .line 1548
    return-void
.end method

.method protected onQosGetStatusDone(ILandroid/os/AsyncResult;Ljava/lang/String;)V
    .locals 10
    .parameter "qosId"
    .parameter "ar"
    .parameter "error"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1668
    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 1669
    .local v3, qosStatusResp:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1670
    .local v4, spec:Lcom/android/internal/telephony/QosSpec;
    const/4 v2, 0x0

    .line 1671
    .local v2, qosStatus:I
    const/16 v5, 0xc

    .line 1673
    .local v5, status:I
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lt v6, v9, :cond_2

    .line 1674
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entire Status Msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->isValidQos(I)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, v3, v8

    if-eqz v6, :cond_1

    .line 1678
    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1680
    packed-switch v2, :pswitch_data_0

    .line 1689
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid qosStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1693
    :goto_0
    array-length v6, v3

    if-le v6, v9, :cond_1

    .line 1695
    new-instance v4, Lcom/android/internal/telephony/QosSpec;

    .end local v4           #spec:Lcom/android/internal/telephony/QosSpec;
    invoke-direct {v4}, Lcom/android/internal/telephony/QosSpec;-><init>()V

    .line 1697
    .restart local v4       #spec:Lcom/android/internal/telephony/QosSpec;
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 1698
    aget-object v6, v3, v0

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/QosSpec;->createPipe(Ljava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 1697
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1682
    .end local v0           #i:I
    :pswitch_0
    const/16 v5, 0xd

    .line 1683
    goto :goto_0

    .line 1686
    :pswitch_1
    const/4 v5, 0x1

    .line 1687
    goto :goto_0

    .line 1700
    .restart local v0       #i:I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QoS Spec for upper layers:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/QosSpec;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1709
    .end local v0           #i:I
    :cond_1
    :goto_2
    new-instance v1, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v1}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1710
    .local v1, ind:Lcom/android/internal/telephony/QosIndication;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1711
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1712
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/QosIndication;->setQosState(I)V

    .line 1713
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/QosIndication;->setQosSpec(Lcom/android/internal/telephony/QosSpec;)V

    .line 1714
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1715
    return-void

    .line 1704
    .end local v1           #ind:Lcom/android/internal/telephony/QosIndication;
    :cond_2
    const-string v6, "Invalid Qos Status message, going back to Active State"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1705
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 1680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onQosRelease(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Release, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40021

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->releaseQos(ILandroid/os/Message;)V

    .line 1512
    return-void
.end method

.method protected onQosReleaseDone(ILjava/lang/String;)V
    .locals 4
    .parameter "qosId"
    .parameter "error"

    .prologue
    .line 1607
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1608
    new-instance v0, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1609
    .local v0, ind:Lcom/android/internal/telephony/QosIndication;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1610
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1611
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1613
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosReleaseDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " QoS Flow Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1620
    .end local v0           #ind:Lcom/android/internal/telephony/QosIndication;
    :goto_0
    return-void

    .line 1618
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosReleaseDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQosResume(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Resume, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40027

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->resumeQos(ILandroid/os/Message;)V

    .line 1536
    return-void
.end method

.method protected onQosResumeDone(ILjava/lang/String;)V
    .locals 3
    .parameter "qosId"
    .parameter "error"

    .prologue
    .line 1649
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1650
    new-instance v0, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1651
    .local v0, ind:Lcom/android/internal/telephony/QosIndication;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1652
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1653
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosResumeDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1660
    .end local v0           #ind:Lcom/android/internal/telephony/QosIndication;
    :goto_0
    return-void

    .line 1658
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosResumeDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQosSetup(Lcom/android/internal/telephony/QosSpec;)V
    .locals 5
    .parameter "qosSpec"

    .prologue
    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Setup. QosSpec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getRilQosSpec()Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x4001f

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getUserData()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V

    .line 1500
    return-void
.end method

.method protected onQosSetupDone(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "userData"
    .parameter "responses"
    .parameter "error"

    .prologue
    .line 1561
    const/4 v1, 0x0

    .line 1562
    .local v1, failure:Z
    const/16 v3, 0xc

    .line 1564
    .local v3, state:I
    new-instance v2, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v2}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1565
    .local v2, ind:Lcom/android/internal/telephony/QosIndication;
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/QosIndication;->setUserData(I)V

    .line 1567
    if-nez p3, :cond_0

    .line 1570
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1571
    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1572
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added QosId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to DC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " QoS Flow Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1587
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 1588
    const/4 v3, 0x0

    .line 1594
    :goto_1
    invoke-virtual {v2, v3, p3}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1595
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onQosSetupDone Complete, userData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1598
    return-void

    .line 1576
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1578
    :catch_0
    move-exception v0

    .line 1579
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onQosSetupDone: Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1580
    const/4 v1, 0x1

    .line 1584
    goto :goto_0

    .line 1581
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1582
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onQosSetupDone: Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1583
    const/4 v1, 0x1

    goto :goto_0

    .line 1590
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    const-string v4, "Error in Qos Setup, going back to Active State"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1591
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1
.end method

.method protected onQosStateChangedInd(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1721
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v2, v5

    check-cast v2, [Ljava/lang/String;

    .line 1722
    .local v2, qosInd:[Ljava/lang/String;
    const/16 v3, 0xc

    .line 1724
    .local v3, qosIndState:I
    if-eqz v2, :cond_0

    array-length v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 1726
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Qos State Changed Ind:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1768
    :goto_0
    return-void

    .line 1730
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onQosStateChangedInd: qosId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1732
    new-instance v1, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v1}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1735
    .local v1, ind:Lcom/android/internal/telephony/QosIndication;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1738
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1740
    .local v4, qosState:I
    packed-switch v4, :pswitch_data_0

    .line 1757
    :pswitch_0
    const-string v5, "Invalid Qos State, ignoring indication!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1766
    .end local v4           #qosState:I
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1767
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1742
    .restart local v4       #qosState:I
    :pswitch_1
    const/4 v3, 0x1

    .line 1743
    goto :goto_1

    .line 1745
    :pswitch_2
    const/4 v3, 0x3

    .line 1746
    goto :goto_1

    .line 1748
    :pswitch_3
    const/4 v3, 0x4

    .line 1749
    goto :goto_1

    .line 1751
    :pswitch_4
    const/16 v3, 0x8

    .line 1752
    goto :goto_1

    .line 1754
    :pswitch_5
    const/4 v3, 0x5

    .line 1755
    goto :goto_1

    .line 1760
    .end local v4           #qosState:I
    :catch_0
    move-exception v0

    .line 1761
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception processing indication:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1762
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1763
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception processing indication:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1740
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onQosSuspend(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Suspend, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40025

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->suspendQos(ILandroid/os/Message;)V

    .line 1524
    return-void
.end method

.method protected onQosSuspendDone(ILjava/lang/String;)V
    .locals 3
    .parameter "qosId"
    .parameter "error"

    .prologue
    .line 1629
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1630
    new-instance v0, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1631
    .local v0, ind:Lcom/android/internal/telephony/QosIndication;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1632
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1633
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosSuspendDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1640
    .end local v0           #ind:Lcom/android/internal/telephony/QosIndication;
    :goto_0
    return-void

    .line 1638
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosSuspendDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public qosModify(ILcom/android/internal/telephony/QosSpec;)V
    .locals 2
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    .line 1474
    const v0, 0x40022

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1476
    return-void
.end method

.method public qosRelease(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1470
    const v0, 0x40020

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1471
    return-void
.end method

.method public qosResume(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1483
    const v0, 0x40026

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1484
    return-void
.end method

.method public qosSetup(Lcom/android/internal/telephony/QosSpec;)V
    .locals 1
    .parameter "qosSpec"

    .prologue
    .line 1466
    const v0, 0x4001e

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1467
    return-void
.end method

.method public qosSuspend(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1479
    const v0, 0x40024

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1480
    return-void
.end method

.method public resetRetryCount()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 444
    return-void
.end method

.method public retryForeverUsingLastTimeout()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    .line 451
    return-void
.end method

.method public tearDown(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    .line 1462
    const v0, 0x40004

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1463
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
