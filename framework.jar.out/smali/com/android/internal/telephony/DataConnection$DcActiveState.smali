.class Lcom/android/internal/telephony/DataConnection$DcActiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# instance fields
.field private mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

.field private mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field private mPendingRequest:Z

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1048
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1049
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1050
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mPendingRequest:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method

.method private handlePartialRetrySetupRequest(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/DataConnection;->access$2802(Lcom/android/internal/telephony/DataConnection;Z)Z

    .line 1165
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1166
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1168
    .local v0, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v2, v1, Lcom/android/internal/telephony/DataConnection;->mTag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/DataConnection;->mTag:I

    .line 1169
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v1, v1, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v1, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    .line 1170
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActiveState partial retry for apn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1171
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataConnection;->onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V

    .line 1173
    .end local v0           #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    :cond_0
    return-void
.end method

.method private handlePartialRetrySetupRequestCompleted(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1178
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1179
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1181
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    invoke-static {v3, v0}, Lcom/android/internal/telephony/DataConnection;->access$1600(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v2

    .line 1183
    .local v2, result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcActiveState onSetupConnectionCompleted result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isPartialSuccess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->isPartialSuccess()Z
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$700(Lcom/android/internal/telephony/DataConnection;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1188
    if-eqz v1, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eqz v3, :cond_0

    .line 1190
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v3, v1, v4}, Lcom/android/internal/telephony/DataConnection;->access$800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1192
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->access$800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1071
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1076
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1077
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #setter for: Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/DataConnection;->access$2702(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #setter for: Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/DataConnection;->access$2802(Lcom/android/internal/telephony/DataConnection;Z)Z

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #setter for: Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/DataConnection;->access$2902(Lcom/android/internal/telephony/DataConnection;Z)Z

    .line 1081
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    .line 1089
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1156
    const/4 v3, 0x0

    .line 1159
    .local v3, retVal:Z
    :goto_0
    return v3

    .line 1091
    .end local v3           #retVal:Z
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1092
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataProfile;->isInPartialRetry()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1094
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$508(Lcom/android/internal/telephony/DataConnection;)I

    .line 1096
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_CONNECT RefCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefCount:I
    invoke-static {v6}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1097
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1098
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v4, v1, v5}, Lcom/android/internal/telephony/DataConnection;->access$800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1108
    :cond_0
    :goto_1
    const/4 v3, 0x1

    .line 1109
    .restart local v3       #retVal:Z
    goto :goto_0

    .line 1101
    .end local v3           #retVal:Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mPendingRequest:Z

    if-eqz v4, :cond_2

    .line 1102
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActiveState Already in partial retry, ignoring multiple requests"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1104
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;->handlePartialRetrySetupRequest(Landroid/os/Message;)V

    .line 1105
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mPendingRequest:Z

    goto :goto_1

    .line 1111
    .end local v1           #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActiveState msg.what=EVENT_SETUP_DATA_CONNECTION_DONE"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1114
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1116
    .restart local v1       #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    const/4 v3, 0x0

    .line 1117
    .restart local v3       #retVal:Z
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$2800(Lcom/android/internal/telephony/DataConnection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;->handlePartialRetrySetupRequestCompleted(Landroid/os/Message;)V

    .line 1122
    iget-object v4, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/DataProfile;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$2800(Lcom/android/internal/telephony/DataConnection;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfile;->setInPartialRetry(Z)V

    .line 1123
    const/4 v3, 0x1

    .line 1125
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mPendingRequest:Z

    goto :goto_0

    .line 1129
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    .end local v3           #retVal:Z
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState moving to DcQosActiveState msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1131
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/internal/telephony/DataConnection;->access$3000(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    .line 1132
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$3100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$3200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1133
    const/4 v3, 0x1

    .line 1134
    .restart local v3       #retVal:Z
    goto/16 :goto_0

    .line 1136
    .end local v3           #retVal:Z
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$510(Lcom/android/internal/telephony/DataConnection;)I

    .line 1137
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefCount:I
    invoke-static {v6}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1138
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefCount:I
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)I

    move-result v4

    if-nez v4, :cond_5

    .line 1140
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 1141
    .local v2, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->tag:I

    .line 1142
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v4, v2}, Lcom/android/internal/telephony/DataConnection;->access$2000(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 1143
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$3300(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$3400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1149
    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 1150
    .restart local v3       #retVal:Z
    goto/16 :goto_0

    .line 1145
    .end local v3           #retVal:Z
    :cond_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 1146
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    invoke-static {v5, v4}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    goto :goto_2

    .line 1089
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x40001 -> :sswitch_1
        0x40004 -> :sswitch_3
        0x4001e -> :sswitch_2
        0x40028 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 0
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1056
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1057
    return-void
.end method
