.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 86
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 87
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    :goto_1
    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    invoke-static {v4, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 89
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    move v1, v2

    .line 87
    goto :goto_1

    .line 92
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 93
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 94
    :try_start_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 95
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v3, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 98
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V
    invoke-static {v3, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/ArrayList;)V

    .line 104
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 105
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 100
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v3, "Cannot load Sms records"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 109
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 110
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 111
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    :goto_3
    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    invoke-static {v4, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :cond_3
    move v1, v2

    .line 111
    goto :goto_3

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
