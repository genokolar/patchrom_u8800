.class Lcom/android/internal/telephony/DataConnection$DcQosActiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcQosActiveState"
.end annotation


# instance fields
.field private qosSpec:Lcom/android/internal/telephony/QosSpec;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->qosSpec:Lcom/android/internal/telephony/QosSpec;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1199
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method

.method private getAsyncException(Landroid/os/Message;)Ljava/lang/String;
    .locals 5
    .parameter "msg"

    .prologue
    .line 1336
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1337
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 1339
    .local v1, ex:Ljava/lang/String;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1340
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1341
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 1343
    :cond_0
    :goto_0
    return-object v1

    .line 1341
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 1204
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1209
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    .line 1213
    const/4 v4, 0x0

    .line 1217
    .local v4, retVal:Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 1329
    const/4 v4, 0x0

    .line 1332
    :goto_0
    return v4

    .line 1219
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_ENABLE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1221
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/QosSpec;

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->qosSpec:Lcom/android/internal/telephony/QosSpec;

    .line 1222
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->qosSpec:Lcom/android/internal/telephony/QosSpec;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->onQosSetup(Lcom/android/internal/telephony/QosSpec;)V

    .line 1223
    const/4 v4, 0x1

    .line 1224
    goto :goto_0

    .line 1226
    :sswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_DISABLE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1228
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1229
    .local v2, qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataConnection;->onQosRelease(I)V

    .line 1230
    const/4 v4, 0x1

    .line 1231
    goto :goto_0

    .line 1233
    .end local v2           #qosId:I
    :sswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_SUSPEND"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1235
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1236
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataConnection;->onQosSuspend(I)V

    .line 1237
    const/4 v4, 0x1

    .line 1238
    goto :goto_0

    .line 1240
    .end local v2           #qosId:I
    :sswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_RESUME"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1242
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1243
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataConnection;->onQosResume(I)V

    .line 1244
    const/4 v4, 0x1

    .line 1245
    goto :goto_0

    .line 1247
    .end local v2           #qosId:I
    :sswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_GET_STATUS"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1249
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1250
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataConnection;->onQosGetStatus(I)V

    .line 1251
    const/4 v4, 0x1

    .line 1252
    goto :goto_0

    .line 1254
    .end local v2           #qosId:I
    :sswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_IND"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1255
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/DataConnection;->onQosStateChangedInd(Landroid/os/AsyncResult;)V

    .line 1257
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1258
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$1700(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/DataConnection;->access$3600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1260
    :cond_0
    const/4 v4, 0x1

    .line 1261
    goto :goto_0

    .line 1264
    :sswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_ENABLE_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1266
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    .local v1, error:Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1269
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 1270
    .local v3, responses:[Ljava/lang/String;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1271
    .local v5, userData:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v5, v3, v1}, Lcom/android/internal/telephony/DataConnection;->onQosSetupDone(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const/4 v4, 0x1

    .line 1273
    goto/16 :goto_0

    .line 1276
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #error:Ljava/lang/String;
    .end local v3           #responses:[Ljava/lang/String;
    .end local v5           #userData:I
    :sswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_DISABLE_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1278
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1280
    .restart local v1       #error:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1281
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2, v1}, Lcom/android/internal/telephony/DataConnection;->onQosReleaseDone(ILjava/lang/String;)V

    .line 1282
    const/4 v4, 0x1

    .line 1283
    goto/16 :goto_0

    .line 1286
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #qosId:I
    :sswitch_8
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_SUSPEND_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1288
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    .restart local v1       #error:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1291
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2, v1}, Lcom/android/internal/telephony/DataConnection;->onQosSuspendDone(ILjava/lang/String;)V

    .line 1292
    const/4 v4, 0x1

    .line 1293
    goto/16 :goto_0

    .line 1296
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #qosId:I
    :sswitch_9
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_RESUME_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1298
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1300
    .restart local v1       #error:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1301
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2, v1}, Lcom/android/internal/telephony/DataConnection;->onQosResumeDone(ILjava/lang/String;)V

    .line 1302
    const/4 v4, 0x1

    .line 1303
    goto/16 :goto_0

    .line 1306
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #qosId:I
    :sswitch_a
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_GET_STATUS_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1308
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1309
    .restart local v1       #error:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1310
    .restart local v2       #qosId:I
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v2, v6, v1}, Lcom/android/internal/telephony/DataConnection;->onQosGetStatusDone(ILandroid/os/AsyncResult;Ljava/lang/String;)V

    .line 1312
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1313
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$1700(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/DataConnection;->access$3700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1315
    :cond_1
    const/4 v4, 0x1

    .line 1316
    goto/16 :goto_0

    .line 1319
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #qosId:I
    :sswitch_b
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_DISCONNECT"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1321
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownQos()V
    invoke-static {v6}, Lcom/android/internal/telephony/DataConnection;->access$3800(Lcom/android/internal/telephony/DataConnection;)V

    .line 1322
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/android/internal/telephony/DataConnection;->access$3900(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    .line 1323
    const/4 v4, 0x1

    .line 1324
    goto/16 :goto_0

    .line 1217
    :sswitch_data_0
    .sparse-switch
        0x40004 -> :sswitch_b
        0x4001e -> :sswitch_0
        0x4001f -> :sswitch_6
        0x40020 -> :sswitch_1
        0x40021 -> :sswitch_7
        0x40024 -> :sswitch_2
        0x40025 -> :sswitch_8
        0x40026 -> :sswitch_3
        0x40027 -> :sswitch_9
        0x40028 -> :sswitch_4
        0x40029 -> :sswitch_a
        0x4002a -> :sswitch_5
    .end sparse-switch
.end method
