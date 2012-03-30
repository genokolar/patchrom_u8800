.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2339
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2342
    if-nez p2, :cond_1

    .line 2411
    :cond_0
    :goto_0
    return-void

    .line 2344
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2345
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2346
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2349
    .local v6, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isAirplaneModeOn()Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2350
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v8

    const/16 v9, 0x37

    invoke-virtual {v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2352
    :cond_2
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v8

    const/16 v9, 0x38

    invoke-virtual {v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2354
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2355
    const-string v8, "android.intent.extra.DOCK_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2357
    .local v7, state:I
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    if-nez v7, :cond_4

    .line 2359
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/server/BluetoothService;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 2360
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$1202(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2362
    :cond_4
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "bluetooth_service_settings"

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2365
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dock_bluetooth_address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/server/BluetoothService;->access$1100()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2366
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2368
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #state:I
    :cond_5
    const-string v8, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2369
    const-string v8, "android.bluetooth.profile.extra.STATE"

    const/16 v9, 0xa

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2371
    .local v2, audioState:I
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v9

    const/16 v8, 0xc

    if-ne v2, v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/server/BluetoothService$ConnectionManager;->setScoAudioActive(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 2372
    .end local v2           #audioState:I
    :cond_7
    const-string v8, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2373
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 2375
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v8

    invoke-virtual {v8}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2376
    .local v1, audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 2377
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v9

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v8}, Landroid/server/BluetoothA2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 2378
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 2376
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2382
    :cond_9
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 2384
    .end local v1           #audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v5           #i:I
    :cond_a
    const-string v8, "BluetoothService"

    const-string v9, "BluetoothA2dp service not available"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2386
    :cond_b
    const-string v8, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2387
    const-string v8, "BluetoothService"

    const-string v9, "Received ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 2389
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_0

    .line 2393
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v8

    invoke-virtual {v8}, Landroid/server/BluetoothEventLoop;->getAuthorizationRequestData()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_c

    .line 2394
    const-string v8, "BluetoothService"

    const-string v9, "SAP authorization not in progress, ignoring this intent"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2398
    :cond_c
    const-string v8, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v9, 0x2

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 2401
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    .line 2402
    const-string v8, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2403
    const-string v8, "BluetoothService"

    const-string v9, "Setting trust state to true"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 2407
    :cond_d
    const-string v8, "BluetoothService"

    const-string v9, "User did not accept the SIM access request"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    goto/16 :goto_0
.end method
