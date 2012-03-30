.class public Landroid/server/BluetoothService;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$Reaper;,
        Landroid/server/BluetoothService$ConnectionManager;,
        Landroid/server/BluetoothService$RemoteService;,
        Landroid/server/BluetoothService$ServiceRecordClient;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final DOCK_ADDRESS_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_addr"

.field private static final DOCK_PIN_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_pin"

.field private static final GATT_INTENT_DELAY:I = 0x7530

.field private static final INCOMING_CONNECTION_FILE:Ljava/lang/String; = "/data/misc/bluetooth/incoming_connection.conf"

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final MESSAGE_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x2

.field private static final MESSAGE_GATT_INTENT:I = 0x7

.field private static final MESSAGE_REMOVE_SERVICE_RECORD:I = 0x3

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final RFCOMM_RECORD_REAPER:I = 0xa

.field private static final RFCOMM_UUIDS:[Landroid/os/ParcelUuid; = null

.field public static final SAP_STATECHANGE_INTENT:Ljava/lang/String; = "com.android.bluetooth.sap.statechanged"

.field private static final SDP_ATTR_ADD_PROTO_DESC_LIST:I = 0xd

.field private static final SDP_ATTR_BPP_SUPPORTED_DOC_FORMAT:I = 0x350

.field private static final SDP_ATTR_GOEP_L2CAP_PSM:I = 0x200

.field private static final SDP_ATTR_PROTO_DESC_LIST:I = 0x4

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_service_settings"

.field private static final SHARED_PREFERENCE_DOCK_ADDRESS:Ljava/lang/String; = "dock_bluetooth_address"

.field private static final STATE_CHANGE_REAPER:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothService"

.field private static final UUID_INTENT_DELAY:I = 0x7530

.field private static mDockAddress:Ljava/lang/String;


# instance fields
.field private final mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterConnectionState:I

.field private final mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

.field private mAdapterSdpHandles:[I

.field private mAdapterUuids:[Landroid/os/ParcelUuid;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

.field private mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

.field private mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

.field private final mBondState:Landroid/server/BluetoothBondState;

.field private mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;

.field private final mContext:Landroid/content/Context;

.field private mDUNEnabled:Z

.field private mDUNRecordHandle:[I

.field private final mDeviceFeatureCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDeviceL2capPsmCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDeviceOobData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field private final mDeviceProfileState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDeviceProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

.field private final mDeviceServiceChannelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDockPin:Ljava/lang/String;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field private mFTPEnabled:Z

.field private mFTPRecordHandle:[I

.field private final mGattIntentTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGattProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGattServiceTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/IBluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mGattServices:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGattWatcherTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/IBluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

.field private final mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mIncomingConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

.field private mIsAirplaneSensitive:Z

.field private mIsAirplaneToggleable:Z

.field private mMAPEnabled:Z

.field private mMAPRecordHandle:[I

.field private mNativeData:I

.field private mPan:Landroid/bluetooth/BluetoothPan;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAPEnabled:Z

.field private mSAPRecordHandle:[I

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/server/BluetoothService$ServiceRecordClient;",
            ">;"
        }
    .end annotation
.end field

.field private mStateChangeTracker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidCallbackTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/server/BluetoothService$RemoteService;",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidIntentTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MessageNotificationServer:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->DirectPrinting:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ReferencePrinting:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PrintingStatus:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .line 251
    invoke-static {}, Landroid/server/BluetoothService;->classInitNative()V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    .line 201
    iput v3, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    iput v3, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    iput v3, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 206
    iput v3, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 216
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mDUNEnabled:Z

    .line 219
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mFTPEnabled:Z

    .line 221
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mSAPEnabled:Z

    .line 223
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mMAPEnabled:Z

    .line 636
    new-instance v1, Landroid/server/BluetoothService$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothService$1;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    .line 2339
    new-instance v1, Landroid/server/BluetoothService$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothService$2;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2692
    new-instance v1, Landroid/server/BluetoothService$3;

    invoke-direct {v1, p0}, Landroid/server/BluetoothService$3;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 255
    iput-object p1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    .line 261
    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 263
    invoke-direct {p0}, Landroid/server/BluetoothService;->initializeNativeDataNative()V

    .line 265
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledNative()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 266
    const-string v1, "BluetoothService"

    const-string v2, "Bluetooth daemons already running - runtime restart? "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 270
    :cond_0
    new-instance v1, Landroid/server/BluetoothBondState;

    invoke-direct {v1, p1, p0}, Landroid/server/BluetoothBondState;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    .line 271
    new-instance v1, Landroid/server/BluetoothAdapterProperties;

    invoke-direct {v1, p1, p0}, Landroid/server/BluetoothAdapterProperties;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    .line 272
    new-instance v1, Landroid/server/BluetoothDeviceProperties;

    invoke-direct {v1, p0}, Landroid/server/BluetoothDeviceProperties;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mGattProperties:Ljava/util/HashMap;

    .line 276
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceFeatureCache:Ljava/util/HashMap;

    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    .line 279
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceL2capPsmCache:Ljava/util/HashMap;

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    .line 281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    .line 282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    .line 283
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mGattServiceTracker:Ljava/util/HashMap;

    .line 284
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mGattWatcherTracker:Ljava/util/HashMap;

    .line 285
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    .line 286
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    .line 287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    .line 288
    new-instance v1, Landroid/bluetooth/BluetoothProfileState;

    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 289
    new-instance v1, Landroid/bluetooth/BluetoothProfileState;

    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 291
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 292
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 294
    new-instance v1, Landroid/server/BluetoothService$ConnectionManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/BluetoothService$ConnectionManager;-><init>(Landroid/server/BluetoothService;Landroid/server/BluetoothService$1;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;

    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 300
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/server/BluetoothInputProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    .line 307
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/server/BluetoothPanProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    .line 308
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/server/BluetoothHealthProfileHandler;->getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothHealthProfileHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    .line 309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    .line 310
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    .line 311
    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    sput-object p0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/server/BluetoothService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1802(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$1902(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$200(Landroid/server/BluetoothService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    return-void
.end method

.method static synthetic access$300(Landroid/server/BluetoothService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Landroid/server/BluetoothService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Landroid/server/BluetoothService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addReservedSdpRecords(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 684
    .local v1, svcIdentifiers:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 685
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v2

    aput v2, v1, v0

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_0
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->addReservedServiceRecordsNative([I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    monitor-exit p0

    return-void

    .line 683
    .end local v0           #i:I
    .end local v1           #svcIdentifiers:[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native addReservedServiceRecordsNative([I)[I
.end method

.method private native addRfcommServiceRecordNative(Ljava/lang/String;JJS)I
.end method

.method private autoConnect()V
    .locals 9

    .prologue
    .line 3185
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 3186
    .local v2, bonds:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 3198
    :cond_0
    return-void

    .line 3189
    :cond_1
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v1, v3

    .line 3190
    .local v6, path:Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3191
    .local v0, address:Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3192
    .local v7, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v7, :cond_2

    .line 3193
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 3194
    .local v5, msg:Landroid/os/Message;
    const/16 v8, 0x65

    iput v8, v5, Landroid/os/Message;->what:I

    .line 3195
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3189
    .end local v5           #msg:Landroid/os/Message;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static bluezStringToScanMode(ZZ)I
    .locals 1
    .parameter "pairable"
    .parameter "discoverable"

    .prologue
    .line 2715
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2716
    const/16 v0, 0x17

    .line 2720
    :goto_0
    return v0

    .line 2717
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 2718
    const/16 v0, 0x15

    goto :goto_0

    .line 2720
    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private native cancelDeviceCreationNative(Ljava/lang/String;)Z
.end method

.method private native cancelPairingUserInputNative(Ljava/lang/String;I)Z
.end method

.method private declared-synchronized checkAndRemoveRecord(II)V
    .locals 4
    .parameter "handle"
    .parameter "pid"

    .prologue
    .line 2239
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothService$ServiceRecordClient;

    .line 2240
    .local v0, client:Landroid/server/BluetoothService$ServiceRecordClient;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    if-ne p2, v1, :cond_1

    .line 2241
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    .line 2245
    iget-object v1, v0, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2248
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2251
    :cond_1
    monitor-exit p0

    return-void

    .line 2239
    .end local v0           #client:Landroid/server/BluetoothService$ServiceRecordClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private clearGattService(Ljava/lang/String;Z)V
    .locals 6
    .parameter "path"
    .parameter "flush"

    .prologue
    .line 4110
    iget-object v4, p0, Landroid/server/BluetoothService;->mGattProperties:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 4112
    .local v3, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 4113
    const-string v4, "Characteristics"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4115
    .local v1, chars:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4116
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4118
    .local v0, charPaths:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 4119
    iget-object v4, p0, Landroid/server/BluetoothService;->mGattServiceTracker:Ljava/util/HashMap;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4123
    .end local v0           #charPaths:[Ljava/lang/String;
    .end local v1           #chars:Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    if-eqz p2, :cond_1

    .line 4124
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->removeGattServiceProperties(Ljava/lang/String;)V

    .line 4126
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mGattServiceTracker:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4127
    iget-object v4, p0, Landroid/server/BluetoothService;->mGattWatcherTracker:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4128
    return-void
.end method

.method private convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 4
    .parameter "value"

    .prologue
    .line 1330
    const/4 v1, 0x0

    .line 1332
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1333
    array-length v3, v1

    new-array v2, v3, [Landroid/os/ParcelUuid;

    .line 1335
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1336
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1338
    :cond_0
    return-object v2
.end method

.method private convertToAdapterState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 3384
    packed-switch p1, :pswitch_data_0

    .line 3394
    const-string v0, "BluetoothService"

    const-string v1, "Error in convertToAdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 3386
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3388
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 3390
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 3392
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 3384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private native createDeviceNative(Ljava/lang/String;)Z
.end method

.method private createIncomingConnectionStateFile()V
    .locals 4

    .prologue
    .line 3435
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3436
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3438
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3443
    :cond_0
    :goto_0
    return-void

    .line 3439
    :catch_0
    move-exception v0

    .line 3440
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothService"

    const-string v3, "IOException: cannot create file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native createPairedDeviceNative(Ljava/lang/String;I)Z
.end method

.method private native createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z
.end method

.method private native deregisterCharacteristicsWatcherNative(Ljava/lang/String;)Z
.end method

.method private native disConnectSapNative()I
.end method

.method private declared-synchronized disableDUN()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 747
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ro.qualcomm.bluetooth.dun"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    const-string v1, "BluetoothService"

    const-string v2, "DUN is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    :goto_0
    monitor-exit p0

    return v0

    .line 752
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Landroid/server/BluetoothService;->mDUNEnabled:Z

    if-ne v2, v1, :cond_1

    .line 753
    iget-object v0, p0, Landroid/server/BluetoothService;->mDUNRecordHandle:[I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeReservedServiceRecordsNative([I)Z

    .line 754
    const-string v0, "BluetoothService"

    const-string v2, "Stop BT-DUN server"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v0, "bt-dun"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mDUNEnabled:Z

    move v0, v1

    .line 757
    goto :goto_0

    .line 759
    :cond_1
    const-string v1, "BluetoothService"

    const-string v2, "DUN already disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized disableFTP()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 710
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ro.qualcomm.bluetooth.ftp"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    const-string v1, "BluetoothService"

    const-string v2, "FTP is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    :goto_0
    monitor-exit p0

    return v0

    .line 715
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Landroid/server/BluetoothService;->mFTPEnabled:Z

    if-ne v2, v1, :cond_1

    .line 716
    iget-object v0, p0, Landroid/server/BluetoothService;->mFTPRecordHandle:[I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeReservedServiceRecordsNative([I)Z

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mFTPEnabled:Z

    move v0, v1

    .line 718
    goto :goto_0

    .line 720
    :cond_1
    const-string v1, "BluetoothService"

    const-string v2, "FTP already disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized disableMAP()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 835
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ro.qualcomm.bluetooth.map"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    const-string v1, "BluetoothService"

    const-string v2, "MAP is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    :goto_0
    monitor-exit p0

    return v0

    .line 840
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Landroid/server/BluetoothService;->mMAPEnabled:Z

    if-ne v2, v1, :cond_1

    .line 841
    iget-object v0, p0, Landroid/server/BluetoothService;->mMAPRecordHandle:[I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeReservedServiceRecordsNative([I)Z

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mMAPEnabled:Z

    move v0, v1

    .line 843
    goto :goto_0

    .line 845
    :cond_1
    const-string v1, "BluetoothService"

    const-string v2, "MAP already disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 835
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized disableSAP()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 786
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ro.qualcomm.bluetooth.sap"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 787
    const-string v1, "BluetoothService"

    const-string v2, "SAP is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    :goto_0
    monitor-exit p0

    return v0

    .line 791
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Landroid/server/BluetoothService;->mSAPEnabled:Z

    if-ne v2, v1, :cond_1

    .line 792
    iget-object v0, p0, Landroid/server/BluetoothService;->mSAPRecordHandle:[I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeReservedServiceRecordsNative([I)Z

    .line 793
    const-string v0, "BluetoothService"

    const-string v2, "Stop SAP server"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v0, "bt-sap"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mSAPEnabled:Z

    move v0, v1

    .line 796
    goto :goto_0

    .line 798
    :cond_1
    const-string v1, "BluetoothService"

    const-string v2, "SAP already disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native disconnectGattNative(Ljava/lang/String;)Z
.end method

.method private native discoverCharacteristicsNative(Ljava/lang/String;)Z
.end method

.method private dumpAclConnectedDevices(Ljava/io/PrintWriter;)V
    .locals 6
    .parameter "pw"

    .prologue
    .line 2633
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getKnownDevices()[Ljava/lang/String;

    move-result-object v2

    .line 2634
    .local v2, devicesObjectPath:[Ljava/lang/String;
    const-string v5, "\n--ACL connected devices--"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2635
    if-eqz v2, :cond_0

    .line 2636
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2637
    .local v1, device:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2640
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #device:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method private dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2625
    const-string v3, "\n--Application Service Records--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2626
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2627
    .local v0, handle:Ljava/lang/Integer;
    iget-object v3, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$ServiceRecordClient;

    iget v3, v3, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2628
    .local v2, pid:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tpid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2630
    .end local v0           #handle:Ljava/lang/Integer;
    .end local v2           #pid:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "pw"
    .parameter "device"

    .prologue
    .line 2608
    iget-object v0, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2622
    :goto_0
    return-void

    .line 2610
    :sswitch_0
    const-string v0, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2613
    :sswitch_1
    const-string v0, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2616
    :sswitch_2
    const-string v0, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2619
    :sswitch_3
    const-string v0, "getConnectionState() = STATE_AUDIO_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2608
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method private dumpHeadsetService(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2513
    const-string v3, "\n--Headset Service--"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2514
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_2

    .line 2515
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2516
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2517
    const-string v3, "No headsets connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2526
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2527
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 2529
    const-string v3, "--Connected and Disconnected Headsets"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2530
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2531
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2532
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO audio connected to device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2519
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2520
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ngetConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2521
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->dumpHeadsetConnectionState(Ljava/io/PrintWriter;Landroid/bluetooth/BluetoothDevice;)V

    .line 2522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatteryUsageHint() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2537
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    return-void

    .line 2527
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private dumpInputDeviceProfile(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2540
    const-string v3, "\n--Bluetooth Service- Input Device Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2541
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v3, :cond_1

    .line 2542
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2543
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2544
    const-string v3, "No input devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2563
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2564
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothInputDevice;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 2566
    const-string v3, "--Connected and Disconnected input devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2567
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2568
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2546
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2548
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Priority of Connected device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    iget-object v3, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 2553
    :pswitch_0
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2556
    :pswitch_1
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2559
    :pswitch_2
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2571
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    return-void

    .line 2564
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpKnownDevices(Ljava/io/PrintWriter;)V
    .locals 14
    .parameter "pw"

    .prologue
    .line 2643
    const-string v10, "\n--Known devices--"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    iget-object v10, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v10}, Landroid/server/BluetoothDeviceProperties;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2645
    .local v0, address:Ljava/lang/String;
    iget-object v10, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v10, v0}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    .line 2646
    .local v1, bondState:I
    const-string v10, "%s %10s (%d) %s\n"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v12, 0x1

    invoke-static {v1}, Landroid/server/BluetoothService;->toBondStateString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v13, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2651
    iget-object v10, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 2652
    .local v8, uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-nez v8, :cond_4

    .line 2653
    const-string v10, "\tuuids = null"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2665
    :cond_1
    iget-object v10, p0, Landroid/server/BluetoothService;->mDeviceL2capPsmCache:Ljava/util/HashMap;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 2666
    .local v9, uuidPsms:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-nez v9, :cond_6

    .line 2667
    const-string v10, "\tuuids = null"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    :cond_2
    iget-object v10, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/server/BluetoothService$RemoteService;

    .line 2680
    .local v6, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v10, v6, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2681
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tPENDING CALLBACK: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2655
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #service:Landroid/server/BluetoothService$RemoteService;
    .end local v9           #uuidPsms:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 2656
    .local v7, uuid:Landroid/os/ParcelUuid;
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2657
    .local v2, channel:Ljava/lang/Integer;
    if-nez v2, :cond_5

    .line 2658
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2660
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RFCOMM channel = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2669
    .end local v2           #channel:Ljava/lang/Integer;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #uuid:Landroid/os/ParcelUuid;
    .restart local v9       #uuidPsms:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_6
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 2670
    .restart local v7       #uuid:Landroid/os/ParcelUuid;
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2671
    .local v5, psm:Ljava/lang/Integer;
    if-nez v5, :cond_7

    .line 2672
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2674
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " L2CAP PSM = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2685
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #bondState:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #psm:Ljava/lang/Integer;
    .end local v7           #uuid:Landroid/os/ParcelUuid;
    .end local v8           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    .end local v9           #uuidPsms:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_8
    return-void
.end method

.method private dumpPanProfile(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2574
    const-string v3, "\n--Bluetooth Service- Pan Profile"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v3, :cond_1

    .line 2576
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 2577
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2578
    const-string v3, "No Pan devices connected"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2597
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothPan;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 2599
    const-string v3, "--Connected and Disconnected Pan devices"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2601
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2580
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of connected devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2581
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2582
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2584
    iget-object v3, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2586
    :pswitch_0
    const-string v3, "getConnectionState() = STATE_CONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2589
    :pswitch_1
    const-string v3, "getConnectionState() = STATE_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2592
    :pswitch_2
    const-string v3, "getConnectionState() = STATE_DISCONNECTING"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2604
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    return-void

    .line 2597
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpProfileState(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 2501
    const-string v0, "\n--Profile State dump--"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n Headset profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n A2dp profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n HID profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n PAN profile state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2510
    return-void
.end method

.method private declared-synchronized enableDUN()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 726
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "ro.qualcomm.bluetooth.dun"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 727
    const-string v2, "BluetoothService"

    const-string v3, "DUN is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :goto_0
    monitor-exit p0

    return v1

    .line 731
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mDUNEnabled:Z

    if-eq v3, v2, :cond_1

    .line 732
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 733
    .local v0, svcIdentifiers:[I
    const/4 v1, 0x0

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->DUN:Landroid/os/ParcelUuid;

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v3

    aput v3, v0, v1

    .line 735
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->addReservedServiceRecordsNative([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mDUNRecordHandle:[I

    .line 736
    const-string v1, "BluetoothService"

    const-string v3, "Starting BT-DUN server"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v1, "bt-dun"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 738
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/server/BluetoothService;->mDUNEnabled:Z

    move v1, v2

    .line 739
    goto :goto_0

    .line 741
    .end local v0           #svcIdentifiers:[I
    :cond_1
    const-string v2, "BluetoothService"

    const-string v3, "DUN already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized enableFTP()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 691
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "ro.qualcomm.bluetooth.ftp"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 692
    const-string v2, "BluetoothService"

    const-string v3, "FTP is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :goto_0
    monitor-exit p0

    return v1

    .line 696
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mFTPEnabled:Z

    if-eq v3, v2, :cond_1

    .line 697
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 698
    .local v0, svcIdentifiers:[I
    const/4 v1, 0x0

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v3

    aput v3, v0, v1

    .line 700
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->addReservedServiceRecordsNative([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mFTPRecordHandle:[I

    .line 701
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/server/BluetoothService;->mFTPEnabled:Z

    move v1, v2

    .line 702
    goto :goto_0

    .line 704
    .end local v0           #svcIdentifiers:[I
    :cond_1
    const-string v2, "BluetoothService"

    const-string v3, "FTP already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized enableMAP()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 810
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "ro.qualcomm.bluetooth.map"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 811
    const-string v2, "BluetoothService"

    const-string v3, "MAP is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    :goto_0
    monitor-exit p0

    return v1

    .line 815
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mMAPEnabled:Z

    if-eq v3, v2, :cond_1

    .line 816
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 817
    .local v0, svcIdentifiers:[I
    const/4 v1, 0x0

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->MessageAccessServer:Landroid/os/ParcelUuid;

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v3

    aput v3, v0, v1

    .line 818
    const-string v1, "BluetoothService"

    const-string v3, "calling addReservedServiceRecordsNative"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->addReservedServiceRecordsNative([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mMAPRecordHandle:[I

    .line 820
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/server/BluetoothService;->mMAPEnabled:Z

    move v1, v2

    .line 821
    goto :goto_0

    .line 823
    .end local v0           #svcIdentifiers:[I
    :cond_1
    const-string v2, "BluetoothService"

    const-string v3, "MAP already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized enableSAP()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 765
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "ro.qualcomm.bluetooth.sap"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 766
    const-string v2, "BluetoothService"

    const-string v3, "SAP is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :goto_0
    monitor-exit p0

    return v1

    .line 770
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mSAPEnabled:Z

    if-eq v3, v2, :cond_1

    .line 771
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 772
    .local v0, svcIdentifiers:[I
    const/4 v1, 0x0

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v3

    aput v3, v0, v1

    .line 774
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->addReservedServiceRecordsNative([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mSAPRecordHandle:[I

    .line 775
    const-string v1, "BluetoothService"

    const-string v3, "Starting SAP server"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v1, "bt-sap"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 777
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/server/BluetoothService;->mSAPEnabled:Z

    move v1, v2

    .line 778
    goto :goto_0

    .line 780
    .end local v0           #svcIdentifiers:[I
    :cond_1
    const-string v2, "BluetoothService"

    const-string v3, "SAP already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native findDeviceNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private forceCloseGattService(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 4132
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup GATT service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->clearGattService(Ljava/lang/String;Z)V

    .line 4134
    iget-object v0, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4135
    return-void
.end method

.method private native getCharacteristicPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getCharacteristicsFromCache(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "servicePath"

    .prologue
    .line 3755
    const-string v2, "Characteristics"

    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothService;->getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3756
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3757
    const/4 v0, 0x0

    .line 3763
    :goto_0
    return-object v0

    .line 3760
    :cond_0
    const/4 v0, 0x0

    .line 3762
    .local v0, paths:[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3763
    goto :goto_0
.end method

.method private native getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getDeviceServiceChannelForUuid(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .locals 3
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 2154
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private native getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native getDeviceStringAttrValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getGattServicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getGattServicesFromCache(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "address"

    .prologue
    .line 3619
    const-string v2, "BluetoothService"

    const-string v3, "getGattServicesFromCache"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Services"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3622
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3623
    const-string v2, "BluetoothService"

    const-string v3, "getGattServicesFromCache: no services found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    const/4 v0, 0x0

    .line 3631
    :goto_0
    return-object v0

    .line 3627
    :cond_0
    const/4 v0, 0x0

    .line 3629
    .local v0, path:[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3631
    goto :goto_0
.end method

.method private getProfileProxy()V
    .locals 4

    .prologue
    .line 2688
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2690
    return-void
.end method

.method private declared-synchronized getRemoteGattServices(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 3611
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3612
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3613
    const/4 v0, 0x0

    .line 3615
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getGattServicesFromCache(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 3611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initProfileState()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3170
    const/4 v2, 0x0

    .line 3171
    .local v2, bonds:[Ljava/lang/String;
    const-string v7, "Devices"

    invoke-virtual {p0, v7, v8}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 3172
    .local v6, val:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 3173
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3175
    :cond_0
    if-nez v2, :cond_2

    .line 3182
    :cond_1
    return-void

    .line 3178
    :cond_2
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 3179
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3180
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v0, v8}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private native initializeNativeDataNative()V
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2433
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isBondingFeasible(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 1490
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1519
    :cond_0
    :goto_0
    return v0

    .line 1494
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1499
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1500
    const-string v1, "BluetoothService"

    const-string v2, "Ignoring createBond(): another device is bonding"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1507
    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    .line 1509
    const-string v1, "BluetoothService"

    const-string v2, "Ignoring createBond(): this device is already bonding or bonded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1513
    :cond_3
    sget-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1514
    invoke-direct {p0}, Landroid/server/BluetoothService;->writeDockPin()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1515
    const-string v1, "BluetoothService"

    const-string v2, "Error while writing Pin for the dock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1519
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEnabledInternal()Z
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isEnabledNative()I
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3545
    const-string v0, "BluetoothService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    return-void
.end method

.method private matchGattService(Ljava/lang/String;Landroid/os/ParcelUuid;)[Ljava/lang/String;
    .locals 12
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v5, 0x0

    .line 3637
    iget-object v9, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v10, "Services"

    invoke-virtual {v9, p1, v10}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3638
    .local v8, value:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 3639
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "matchGattService: No GATT based services were found on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :cond_0
    :goto_0
    return-object v5

    .line 3642
    :cond_1
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "matchGattService: Value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    const/4 v1, 0x0

    .line 3647
    .local v1, gattServicePaths:[Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3649
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3650
    .local v4, matchList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3653
    .local v0, count:I
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3655
    .local v7, stringUuid:Ljava/lang/String;
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested GATT UUID to match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v1

    if-ge v2, v9, :cond_4

    .line 3658
    const/4 v3, 0x1

    .line 3659
    .local v3, match:Z
    aget-object v9, v1, v2

    const-string v10, "UUID"

    invoke-virtual {p0, v9, v10}, Landroid/server/BluetoothService;->getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3661
    .local v6, serviceUuid:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 3662
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found GATT UUID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3665
    const-string v9, "BluetoothService"

    const-string v10, "UUID does not match"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    const/4 v3, 0x0

    .line 3669
    :cond_2
    if-eqz v3, :cond_3

    .line 3670
    aget-object v9, v1, v2

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3671
    add-int/lit8 v0, v0, 0x1

    .line 3657
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3676
    .end local v3           #match:Z
    .end local v6           #serviceUuid:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    .line 3679
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " instances of service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    new-array v5, v0, [Ljava/lang/String;

    .line 3683
    .local v5, ret:[Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .locals 10
    .parameter "address"
    .parameter "result"

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v7, 0xa

    .line 1143
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 1144
    .local v0, attempt:I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 1146
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1152
    .local v1, message:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1153
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 1155
    .local v2, postResult:Z
    if-nez v2, :cond_0

    .line 1156
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private native readAdapterOutOfBandDataNative()[B
.end method

.method public static declared-synchronized readDockBluetoothAddress()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 314
    const-class v6, Landroid/server/BluetoothService;

    monitor-enter v6

    :try_start_0
    sget-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 316
    :cond_1
    const/4 v3, 0x0

    .line 319
    .local v3, file:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/sys/class/switch/dock/bt_addr"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 320
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .local v4, file:Ljava/io/BufferedInputStream;
    const/16 v7, 0x11

    :try_start_2
    new-array v0, v7, [B

    .line 321
    .local v0, address:[B
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 322
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 323
    .local v1, dockAddress:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 325
    sput-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    .line 326
    sget-object v5, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 336
    if-eqz v4, :cond_0

    .line 338
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v7

    goto :goto_0

    .line 328
    :cond_2
    :try_start_4
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CheckBluetoothAddress failed for car dock address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 336
    if-eqz v4, :cond_5

    .line 338
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v4

    .line 344
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :cond_3
    :goto_1
    const/4 v7, 0x0

    :try_start_6
    sput-object v7, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 339
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v0       #address:[B
    .restart local v1       #dockAddress:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v7

    move-object v3, v4

    .line 341
    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 331
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 332
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_7
    const-string v7, "BluetoothService"

    const-string v8, "FileNotFoundException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 336
    if-eqz v3, :cond_3

    .line 338
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 339
    :catch_3
    move-exception v7

    goto :goto_1

    .line 333
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 334
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_9
    const-string v7, "BluetoothService"

    const-string v8, "IOException while trying to read dock address"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 336
    if-eqz v3, :cond_3

    .line 338
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_1

    .line 339
    :catch_5
    move-exception v7

    goto :goto_1

    .line 336
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_4
    if-eqz v3, :cond_4

    .line 338
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 341
    :cond_4
    :goto_5
    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 339
    :catch_6
    move-exception v7

    goto :goto_5

    .line 336
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 333
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 331
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v0       #address:[B
    .restart local v1       #dockAddress:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :cond_5
    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private readIncomingConnectionState()V
    .locals 12

    .prologue
    .line 3455
    iget-object v10, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v10

    .line 3456
    const/4 v2, 0x0

    .line 3458
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3459
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3460
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3462
    .local v1, file:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 3463
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3464
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 3465
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3466
    .local v8, value:[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v9, v8

    const/4 v11, 0x3

    if-ne v9, v11, :cond_0

    .line 3467
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3468
    .local v7, val1:Ljava/lang/Integer;
    new-instance v6, Landroid/util/Pair;

    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-direct {v6, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3469
    .local v6, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v9, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 3472
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7           #val1:Ljava/lang/Integer;
    .end local v8           #value:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 3473
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException: readIncomingConnectionState"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3477
    if-eqz v2, :cond_1

    .line 3479
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 3485
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3486
    return-void

    .line 3477
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_4

    .line 3479
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 3482
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 3480
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    move-object v2, v3

    .line 3482
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 3474
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 3475
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: readIncomingConnectionState"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3477
    if-eqz v2, :cond_1

    .line 3479
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 3480
    :catch_3
    move-exception v9

    goto :goto_2

    .line 3477
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v2, :cond_3

    .line 3479
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 3482
    :cond_3
    :goto_5
    :try_start_9
    throw v9

    .line 3485
    :catchall_1
    move-exception v9

    :goto_6
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v9

    .line 3480
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v9

    goto :goto_2

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v11

    goto :goto_5

    .line 3485
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 3477
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 3474
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 3472
    :catch_7
    move-exception v0

    goto :goto_1

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :cond_4
    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private native registerCharacteristicsWatcherNative(Ljava/lang/String;)Z
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 2415
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2416
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2418
    .local v0, airplaneModeRadios:Ljava/lang/String;
    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2421
    .local v2, toggleableRadios:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    .line 2423
    if-nez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    .line 2426
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_0

    .line 2427
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2429
    :cond_0
    return-void

    .line 2421
    :cond_1
    const-string v3, "bluetooth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0

    .line 2423
    :cond_2
    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1
.end method

.method private native removeDeviceNative(Ljava/lang/String;)Z
.end method

.method private native removeReservedServiceRecordsNative([I)Z
.end method

.method private native removeServiceRecordNative(I)Z
.end method

.method private native sapAuthorizeNative(Ljava/lang/String;ZI)Z
.end method

.method static scanModeToBluezString(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 2724
    packed-switch p0, :pswitch_data_0

    .line 2732
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2726
    :pswitch_1
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 2728
    :pswitch_2
    const-string v0, "connectable"

    goto :goto_0

    .line 2730
    :pswitch_3
    const-string v0, "discoverable"

    goto :goto_0

    .line 2724
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native setCharacteristicPropertyNative(Ljava/lang/String;Ljava/lang/String;[BIZ)Z
.end method

.method private native setConnectionParametersNative(Ljava/lang/String;IIII)Z
.end method

.method private native setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setDevicePropertyIntegerNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native setLinkTimeoutNative(Ljava/lang/String;I)Z
.end method

.method private native setPairingConfirmationNative(Ljava/lang/String;ZI)Z
.end method

.method private native setPasskeyNative(Ljava/lang/String;II)Z
.end method

.method private native setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private setPropertyBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1206
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1208
    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private setPropertyInteger(Ljava/lang/String;I)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1202
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1196
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private native setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z
.end method

.method private native setupNativeDataNative()Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private native stopDiscoveryNative()Z
.end method

.method private native tearDownNativeDataNative()Z
.end method

.method private static toBondStateString(I)Ljava/lang/String;
    .locals 1
    .parameter "bondState"

    .prologue
    .line 1168
    packed-switch p0, :pswitch_data_0

    .line 1176
    const-string v0, "??????"

    :goto_0
    return-object v0

    .line 1170
    :pswitch_0
    const-string/jumbo v0, "not bonded"

    goto :goto_0

    .line 1172
    :pswitch_1
    const-string v0, "bonding"

    goto :goto_0

    .line 1174
    :pswitch_2
    const-string v0, "bonded"

    goto :goto_0

    .line 1168
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private truncateIncomingConnectionFile()V
    .locals 5

    .prologue
    .line 3489
    const/4 v1, 0x0

    .line 3491
    .local v1, r:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/misc/bluetooth/incoming_connection.conf"

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3492
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .local v2, r:Ljava/io/RandomAccessFile;
    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 3498
    if-eqz v2, :cond_2

    .line 3500
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 3506
    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 3501
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 3503
    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 3493
    :catch_1
    move-exception v0

    .line 3494
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3498
    if-eqz v1, :cond_0

    .line 3500
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 3501
    :catch_2
    move-exception v3

    goto :goto_0

    .line 3495
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 3496
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3498
    if-eqz v1, :cond_0

    .line 3500
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 3501
    :catch_4
    move-exception v3

    goto :goto_0

    .line 3498
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 3500
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3503
    :cond_1
    :goto_4
    throw v3

    .line 3501
    :catch_5
    move-exception v4

    goto :goto_4

    .line 3498
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 3495
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 3493
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private native updateCharacteristicValueNative(Ljava/lang/String;)Z
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .locals 3
    .parameter "state"
    .parameter "prevState"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3399
    packed-switch p2, :pswitch_data_0

    .line 3413
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 3430
    :cond_0
    :goto_1
    return v0

    .line 3401
    :pswitch_0
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    goto :goto_0

    .line 3405
    :pswitch_1
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    goto :goto_0

    .line 3409
    :pswitch_2
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    goto :goto_0

    .line 3415
    :pswitch_3
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 3416
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_1

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eq v2, v0, :cond_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 3419
    :pswitch_4
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 3420
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 3423
    :pswitch_5
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 3424
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_2

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    if-eq v2, v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 3427
    :pswitch_6
    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 3399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3413
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateProfileConnectionState(III)V
    .locals 10
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3293
    const/4 v2, 0x1

    .line 3294
    .local v2, numDev:I
    move v1, p2

    .line 3295
    .local v1, newHashState:I
    const/4 v4, 0x1

    .line 3307
    .local v4, update:Z
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 3308
    .local v3, stateNumDev:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 3309
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3310
    .local v0, currHashState:I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3312
    if-ne p2, v0, :cond_2

    .line 3313
    add-int/lit8 v2, v2, 0x1

    .line 3332
    .end local v0           #currHashState:I
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 3333
    iget-object v5, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3336
    :cond_1
    return-void

    .line 3314
    .restart local v0       #currHashState:I
    :cond_2
    if-eq p2, v8, :cond_3

    if-ne p2, v7, :cond_4

    if-eq v0, v8, :cond_4

    .line 3317
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 3318
    :cond_4
    if-ne v2, v7, :cond_5

    if-ne p3, v0, :cond_5

    .line 3319
    const/4 v4, 0x1

    goto :goto_0

    .line 3320
    :cond_5
    if-le v2, v7, :cond_7

    if-ne p3, v0, :cond_7

    .line 3321
    add-int/lit8 v2, v2, -0x1

    .line 3323
    if-eq v0, v8, :cond_6

    if-ne v0, v7, :cond_0

    .line 3325
    :cond_6
    move v1, v0

    goto :goto_0

    .line 3328
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateSdpRecords()V
    .locals 5

    .prologue
    .line 851
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v1, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_0
    invoke-direct {p0, v1}, Landroid/server/BluetoothService;->addReservedSdpRecords(Ljava/util/ArrayList;)V

    .line 867
    const/4 v2, 0x1

    const-string/jumbo v3, "nap"

    const-string/jumbo v4, "pan1"

    invoke-virtual {p0, v2, v3, v4}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 871
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/ParcelUuid;

    iput-object v2, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 877
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 878
    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    aput-object v2, v3, v0

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 883
    :cond_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->enableFTP()Z

    .line 884
    invoke-direct {p0}, Landroid/server/BluetoothService;->enableDUN()Z

    .line 885
    invoke-direct {p0}, Landroid/server/BluetoothService;->enableSAP()Z

    .line 886
    invoke-direct {p0}, Landroid/server/BluetoothService;->enableMAP()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    monitor-exit p0

    return-void

    .line 851
    .end local v0           #i:I
    .end local v1           #uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private validateProfileConnectionState(I)Z
    .locals 2
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 3377
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized writeDockPin()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 349
    monitor-enter p0

    const/4 v1, 0x0

    .line 351
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/switch/dock/bt_pin"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 357
    .local v3, pin:I
    const-string v6, "%04d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    .line 358
    iget-object v6, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 365
    if-eqz v2, :cond_0

    .line 367
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v1, v2

    .line 374
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #pin:I
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :goto_1
    monitor-exit p0

    return v4

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v4, "BluetoothService"

    const-string v6, "FileNotFoundException while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    if-eqz v1, :cond_1

    .line 367
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 373
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    :try_start_5
    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v5

    .line 374
    goto :goto_1

    .line 362
    :catch_1
    move-exception v0

    .line 363
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v4, "BluetoothService"

    const-string v6, "IOException while while trying to write dock pairing pin"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 365
    if-eqz v1, :cond_1

    .line 367
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 368
    :catch_2
    move-exception v4

    goto :goto_3

    .line 365
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v1, :cond_2

    .line 367
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 370
    :cond_2
    :goto_6
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 349
    :catchall_1
    move-exception v4

    :goto_7
    monitor-exit p0

    throw v4

    .line 368
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v3           #pin:I
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v5

    goto :goto_6

    .line 365
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 362
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 360
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 349
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_7
.end method


# virtual methods
.method declared-synchronized addGattServiceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "path"
    .parameter "properties"

    .prologue
    .line 3573
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/server/BluetoothService;->mGattProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 3574
    .local v5, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 3575
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3578
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, p2

    if-ge v0, v7, :cond_5

    .line 3579
    aget-object v3, p2, v0

    .line 3580
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3582
    .local v4, newValue:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 3583
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Gatt Service Property at index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3586
    :cond_1
    const-string v7, "Characteristics"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3587
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3588
    .local v6, str:Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3589
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 3590
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3591
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3593
    :cond_2
    if-lez v2, :cond_3

    .line 3594
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3599
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3573
    .end local v0           #i:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 3597
    .restart local v0       #i:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #newValue:Ljava/lang/String;
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    aget-object v4, p2, v0

    goto :goto_3

    .line 3602
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Landroid/server/BluetoothService;->mGattProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3604
    monitor-exit p0

    return-void
.end method

.method addProfileState(Ljava/lang/String;Z)Landroid/bluetooth/BluetoothDeviceProfileState;
    .locals 6
    .parameter "address"
    .parameter "setTrust"

    .prologue
    .line 3136
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;Z)V

    .line 3138
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3139
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    .line 3140
    return-object v0
.end method

.method public declared-synchronized addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    .locals 11
    .parameter "serviceName"
    .parameter "uuid"
    .parameter "channel"
    .parameter "b"

    .prologue
    const/4 v10, -0x1

    .line 2165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v9, v10

    .line 2195
    :goto_0
    monitor-exit p0

    return v9

    .line 2168
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    const/16 v0, 0x1e

    if-le p3, v0, :cond_2

    :cond_1
    move v9, v10

    .line 2170
    goto :goto_0

    .line 2172
    :cond_2
    :try_start_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2173
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to register a reserved UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 2174
    goto :goto_0

    .line 2176
    :cond_3
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    int-to-short v6, p3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothService;->addRfcommServiceRecordNative(Ljava/lang/String;JJS)I

    move-result v9

    .line 2179
    .local v9, handle:I
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    if-ne v9, v10, :cond_4

    move v9, v10

    .line 2181
    goto :goto_0

    .line 2184
    :cond_4
    new-instance v7, Landroid/server/BluetoothService$ServiceRecordClient;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/server/BluetoothService$ServiceRecordClient;-><init>(Landroid/server/BluetoothService$1;)V

    .line 2185
    .local v7, client:Landroid/server/BluetoothService$ServiceRecordClient;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    .line 2186
    iput-object p4, v7, Landroid/server/BluetoothService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    .line 2187
    new-instance v0, Landroid/server/BluetoothService$Reaper;

    iget v1, v7, Landroid/server/BluetoothService$ServiceRecordClient;->pid:I

    const/16 v2, 0xa

    invoke-direct {v0, p0, v9, v1, v2}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;III)V

    iput-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    .line 2188
    iget-object v0, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2190
    :try_start_2
    iget-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2191
    :catch_0
    move-exception v8

    .line 2192
    .local v8, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "BluetoothService"

    const-string v1, ""

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2193
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/server/BluetoothService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2165
    .end local v7           #client:Landroid/server/BluetoothService$ServiceRecordClient;
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v9           #handle:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 6
    .parameter "device"
    .parameter "allow"

    .prologue
    const/4 v2, 0x0

    .line 2930
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2933
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2944
    :goto_0
    return v2

    .line 2937
    :cond_0
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2938
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 2939
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingProfileConnect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2943
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingProfileConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, p2, v2}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z

    move-result v2

    goto :goto_0
.end method

.method allowIncomingTethering()Z
    .locals 2

    .prologue
    .line 2783
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2784
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->allowIncomingTethering()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized attemptAutoPair(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1094
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 1097
    const-string v0, "0000"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    const/4 v0, 0x1

    .line 1100
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1094
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelBondProcess(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 1593
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1608
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1597
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1600
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1601
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 1605
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 1607
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->cancelDeviceCreationNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1608
    const/4 v0, 0x1

    goto :goto_0

    .line 1593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelDiscovery()Z
    .locals 3

    .prologue
    .line 1471
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1475
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->stopDiscoveryNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelPairingUserInput(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2030
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 2047
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2034
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2037
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-virtual {v2, p1, v3, v4}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 2039
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2040
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2041
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 2042
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelUserInputNative("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "available, ignoring. Maybe the PasskeyAgent Request was already cancelled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "by the remote or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2030
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2047
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->cancelPairingUserInputNative(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z
    .locals 7
    .parameter "on"
    .parameter "callback"
    .parameter "binder"

    .prologue
    const/4 v3, 0x0

    .line 2286
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2290
    .local v1, pid:I
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2291
    if-eqz p1, :cond_2

    .line 2292
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 2302
    :try_start_0
    new-instance v4, Landroid/server/BluetoothService$Reaper;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v1, v5}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;II)V

    const/4 v5, 0x0

    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2310
    :cond_1
    if-eqz p1, :cond_4

    .line 2311
    const/4 v2, 0x3

    .line 2319
    .local v2, type:I
    :goto_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v3, v2, p2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2320
    const/4 v3, 0x1

    .end local v2           #type:I
    :cond_2
    :goto_2
    return v3

    .line 2296
    :cond_3
    if-nez p1, :cond_0

    .line 2297
    iget-object v4, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2303
    :catch_0
    move-exception v0

    .line 2304
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2313
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const/4 v2, 0x4

    .restart local v2       #type:I
    goto :goto_1
.end method

.method declared-synchronized cleanNativeAfterShutoffBluetooth()V
    .locals 1

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 592
    invoke-virtual {p0}, Landroid/server/BluetoothService;->disableNative()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cleanupAfterFinishDisable()V
    .locals 7

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v4}, Landroid/server/BluetoothAdapterProperties;->clear()V

    .line 536
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 537
    .local v3, srHandle:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 534
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #srHandle:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 539
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 541
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnected:I

    .line 542
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesConnecting:I

    .line 543
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mProfilesDisconnecting:I

    .line 544
    const/4 v4, 0x0

    iput v4, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 545
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    .line 546
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 551
    .local v1, ident:J
    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff()V

    .line 558
    iget-object v4, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 561
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 563
    :goto_1
    monitor-exit p0

    return-void

    .line 559
    :catch_0
    move-exception v4

    .line 561
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method clearApplicationStateChangeTracker()V
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2329
    return-void
.end method

.method declared-synchronized clearRemoteDeviceGattServices(Ljava/lang/String;)V
    .locals 5
    .parameter "address"

    .prologue
    .line 4198
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothService"

    const-string v4, "clearRemoteDeviceGattServices"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v4, "Services"

    invoke-virtual {v3, p1, v4}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4201
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 4212
    :goto_0
    monitor-exit p0

    return-void

    .line 4205
    :cond_0
    const/4 v1, 0x0

    .line 4206
    .local v1, services:[Ljava/lang/String;
    :try_start_1
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4208
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 4209
    aget-object v3, v1, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/server/BluetoothService;->clearGattService(Ljava/lang/String;Z)V

    .line 4208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4211
    :cond_1
    const-string v3, "Services"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4198
    .end local v0           #i:I
    .end local v1           #services:[Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized closeRemoteGattService(Ljava/lang/String;)V
    .locals 9
    .parameter "path"

    .prologue
    .line 4138
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH"

    const-string v8, "Need BLUETOOTH permission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 4188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4141
    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v6, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4142
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeRemoteGattService: service not found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4138
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 4146
    :cond_2
    :try_start_2
    iget-object v6, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v6, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4147
    .local v3, refCount:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4149
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeRemoteGattService: refCount for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 4152
    iget-object v6, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v6, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4153
    iget-object v6, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v6, p1, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4158
    :cond_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->forceCloseGattService(Ljava/lang/String;)V

    .line 4161
    const/4 v6, 0x0

    const-string v7, "/service"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4163
    .local v1, devicePath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4166
    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4168
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 4169
    const-string v6, "BluetoothService"

    const-string v7, "adress is null????"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4173
    :cond_4
    iget-object v6, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v6, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v5

    .line 4175
    .local v5, subMap:Ljava/util/SortedMap;
    invoke-interface {v5}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 4176
    invoke-interface {v5}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4177
    .local v2, nextServicePath:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "/service"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4178
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeRemoteGattService: more GATT services are running on device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    .end local v2           #nextServicePath:Ljava/lang/String;
    :cond_5
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeRemoteGattService: disconnect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->disconnectGattNative(Ljava/lang/String;)Z

    move-result v4

    .line 4187
    .local v4, res:Z
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disconnectGatt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 2992
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2995
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2997
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .parameter "device"
    .parameter "config"

    .prologue
    .line 2982
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2985
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectHeadset(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3080
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    .line 3090
    :cond_0
    :goto_0
    return v2

    .line 3082
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3083
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3084
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3085
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 3086
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3087
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    move v2, v3

    .line 3088
    goto :goto_0
.end method

.method public connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 2853
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2856
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 2857
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2858
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 2862
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2863
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2864
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native connectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 2803
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2806
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native connectPanDeviceNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public connectSink(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 3108
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 3118
    :cond_0
    :goto_0
    return v2

    .line 3110
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3111
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3112
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3113
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3114
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3115
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3116
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized createBond(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1523
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 1544
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1524
    :cond_1
    :try_start_1
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 1525
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    .line 1527
    .local v1, btDeviceClass:I
    const/16 v4, 0x580

    if-ne v1, v4, :cond_3

    .line 1528
    const-string v4, "BluetoothService"

    const-string v5, "The device is HID pointing device, skipping pairing"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1530
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CreateDeviceNative failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1523
    .end local v0           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v1           #btDeviceClass:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1533
    .restart local v0       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local v1       #btDeviceClass:I
    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v4, 0xb

    invoke-virtual {v2, p1, v4}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V

    move v2, v3

    .line 1534
    goto :goto_0

    .line 1537
    :cond_3
    const v4, 0xea60

    invoke-direct {p0, p1, v4}, Landroid/server/BluetoothService;->createPairedDeviceNative(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1541
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1542
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v4, 0xb

    invoke-virtual {v2, p1, v4}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 1544
    goto :goto_0
.end method

.method public declared-synchronized createBondOutOfBand(Ljava/lang/String;[B[B)Z
    .locals 2
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const/4 v0, 0x0

    .line 1549
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1559
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1551
    :cond_1
    const v1, 0xea60

    :try_start_1
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1555
    invoke-virtual {p0, p1, p2, p3}, Landroid/server/BluetoothService;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    .line 1556
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    .line 1557
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1559
    const/4 v0, 0x1

    goto :goto_0

    .line 1549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native createChannelNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public declared-synchronized deregisterCharacteristicsWatcher(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 4065
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4066
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 4079
    :goto_0
    monitor-exit p0

    return v0

    .line 4068
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4069
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service not present "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4065
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4073
    :cond_1
    :try_start_2
    const-string v1, "BluetoothService"

    const-string v2, "deregisterCharacteristicsWatcher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4075
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->deregisterCharacteristicsWatcherNative(Ljava/lang/String;)Z

    move-result v0

    .line 4077
    .local v0, ret:Z
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattWatcherTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public deregisterEl2capConnection(I)V
    .locals 3
    .parameter "handle"

    .prologue
    .line 2215
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    iget-object v0, p0, Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$ConnectionManager;->deregisterEl2capConnection(I)V

    .line 2218
    return-void
.end method

.method native destroyChannelNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public disable()Z
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized disable(Z)Z
    .locals 5
    .parameter "saveSetting"

    .prologue
    const/4 v1, 0x1

    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 483
    .local v0, adapterState:I
    packed-switch v0, :pswitch_data_0

    .line 489
    :pswitch_0
    const/4 v1, 0x0

    .line 494
    :goto_0
    :pswitch_1
    monitor-exit p0

    return v1

    .line 492
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 493
    const-string v2, "bluetooth.isEnabled"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 479
    .end local v0           #adapterState:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 483
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method native disableNative()I
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 3
    .parameter "device"
    .parameter "config"
    .parameter "id"

    .prologue
    .line 3002
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3005
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3006
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized disconnectDevices()V
    .locals 3

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 500
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 499
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 503
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 504
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 506
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public disconnectHeadset(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 3094
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 3104
    :cond_0
    :goto_0
    return v2

    .line 3096
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3097
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3098
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3099
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3100
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3101
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3102
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 2868
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2870
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2871
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v2

    .line 2872
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v1, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2873
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 2877
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2878
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native disconnectInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 2826
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2829
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2830
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native disconnectPanDeviceNative(Ljava/lang/String;)Z
.end method

.method native disconnectPanServerDeviceNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public declared-synchronized disconnectSap()V
    .locals 4

    .prologue
    .line 4191
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothService"

    const-string v2, "disconnectSap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    invoke-direct {p0}, Landroid/server/BluetoothService;->disConnectSapNative()I

    move-result v0

    .line 4193
    .local v0, res:I
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectSap returns -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4194
    monitor-exit p0

    return-void

    .line 4191
    .end local v0           #res:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disconnectSink(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 3122
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 3132
    :cond_0
    :goto_0
    return v2

    .line 3124
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3125
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3126
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3127
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x34

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3128
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3129
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3130
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized discoverCharacteristics(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 3949
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3950
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 3961
    :goto_0
    monitor-exit p0

    return v0

    .line 3952
    :cond_0
    :try_start_1
    const-string v1, "BluetoothService"

    const-string v2, "discoverCharacteristics"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3955
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service not present "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3949
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3959
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->discoverCharacteristicsNative(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 3961
    .local v0, ret:Z
    goto :goto_0
.end method

.method native discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 2468
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 2498
    :goto_0
    return-void

    .line 2472
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAirplaneSensitive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAirplaneToggleable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDiscovering() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2481
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2483
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2486
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpKnownDevices(Ljava/io/PrintWriter;)V

    .line 2487
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpAclConnectedDevices(Ljava/io/PrintWriter;)V

    .line 2488
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpHeadsetService(Ljava/io/PrintWriter;)V

    .line 2489
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpInputDeviceProfile(Ljava/io/PrintWriter;)V

    .line 2490
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpPanProfile(Ljava/io/PrintWriter;)V

    .line 2491
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpApplicationServiceRecords(Ljava/io/PrintWriter;)V

    .line 2492
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->dumpProfileState(Ljava/io/PrintWriter;)V

    .line 2495
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2496
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2497
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v5, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    goto/16 :goto_0
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .locals 6
    .parameter "saveSetting"

    .prologue
    const/4 v0, 0x1

    .line 608
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 613
    const/4 v0, 0x0

    .line 619
    :goto_0
    monitor-exit p0

    return v0

    .line 616
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 618
    const-string v1, "bluetooth.isEnabled"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native enableNative()I
.end method

.method public declared-synchronized fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    .locals 8
    .parameter "address"
    .parameter "uuid"
    .parameter "callback"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1787
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    const-string v7, "Need BLUETOOTH permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 1832
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 1790
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1794
    new-instance v3, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v3, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 1795
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    if-eqz p2, :cond_2

    iget-object v5, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1801
    :cond_2
    if-eqz p2, :cond_3

    .line 1802
    iget-object v5, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v5, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    :cond_3
    iget-object v5, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v4

    .line 1808
    goto :goto_0

    .line 1810
    :cond_4
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->findDeviceNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1817
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1818
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_5

    .line 1819
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1787
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1824
    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #service:Landroid/server/BluetoothService$RemoteService;
    :cond_5
    :try_start_2
    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1829
    .end local v1           #path:Ljava/lang/String;
    .local v2, ret:Z
    :goto_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1830
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1831
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1826
    .end local v0           #message:Landroid/os/Message;
    .end local v2           #ret:Z
    :cond_6
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .restart local v2       #ret:Z
    goto :goto_1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothService;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    .line 406
    return-void

    .line 404
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    throw v0
.end method

.method declared-synchronized finishDisable()V
    .locals 8

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 515
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v6, 0xa

    const/4 v7, 0x3

    invoke-virtual {v5, v0, v6, v7}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/server/BluetoothService;->removeAllProfileState()V

    .line 525
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    monitor-exit p0

    return-void

    .line 514
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getAdapterConnectionState()I
    .locals 1

    .prologue
    .line 3275
    iget v0, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    return v0
.end method

.method native getAdapterPathNative()Ljava/lang/String;
.end method

.method getAdapterProperties()Landroid/server/BluetoothAdapterProperties;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    return-object v0
.end method

.method native getAdapterPropertiesNative()[Ljava/lang/Object;
.end method

.method public declared-synchronized getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v0, "Address"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "objectPath"

    .prologue
    const/4 v2, 0x0

    .line 2736
    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v3}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 2737
    .local v0, adapterObjectPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2738
    :cond_0
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  or deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    :goto_0
    return-object v2

    .line 2742
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2743
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  is not a prefix of deviceObjectPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bluetoothd crashed ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2748
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2749
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_3

    const/16 v2, 0x5f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2751
    :cond_3
    const-string v3, "BluetoothService"

    const-string v4, "getAddressFromObjectPath: Address being returned is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getApplicationStateChangeCallbacks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2332
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "address"

    .prologue
    .line 3260
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getAuthorizationAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3261
    .local v0, data:Ljava/lang/Integer;
    return-object v0
.end method

.method public getBluetoothState()I
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v0

    return v0
.end method

.method getBluetoothStateInternal()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothAdapterState()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .locals 3
    .parameter "address"

    .prologue
    .line 1644
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1646
    const/high16 v0, -0x8000

    .line 1648
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->getBondState(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCOD()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string v0, "Class"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native getChannelApplicationNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native getChannelFdNative(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public declared-synchronized getCharacteristicProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 3965
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    const-string v5, "Need BLUETOOTH permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3966
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 3986
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 3968
    :cond_1
    :try_start_1
    const-string v3, "BluetoothService"

    const-string v4, "getCharacteristicProperties"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    if-eqz p1, :cond_0

    .line 3974
    const/4 v3, 0x0

    const-string v4, "/characteristic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3976
    .local v2, servicePath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3980
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v3, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3981
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service not present "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3965
    .end local v2           #servicePath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3985
    .restart local v2       #servicePath:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getCharacteristicPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3986
    .local v1, propValues:[Ljava/lang/String;
    goto :goto_0
.end method

.method public getConnectedHealthDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3051
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3054
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothHealthProfileHandler;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3055
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectedInputDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2890
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2892
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothInputProfileHandler;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2893
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectedPanDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2811
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2813
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2814
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;
    .locals 2
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 1580
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method getDeviceProperties()Landroid/server/BluetoothDeviceProperties;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    return-object v0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    .line 1441
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v1, "DiscoverableTimeout"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, timeout:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1444
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1446
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method declared-synchronized getDockPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEffectiveAmpPolicy(I)I
    .locals 3
    .parameter "desiredPolicy"

    .prologue
    .line 2221
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    iget-object v0, p0, Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$ConnectionManager;->getEffectiveAmpPolicy(I)I

    move-result v0

    return v0
.end method

.method public getGattServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 3874
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3875
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3876
    const/4 v0, 0x0

    .line 3879
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Name"

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "property"

    .prologue
    .line 3550
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3551
    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGattServiceProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    if-eqz v0, :cond_0

    .line 3553
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3560
    :goto_0
    monitor-exit p0

    return-object v1

    .line 3556
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateGattServicePropertiesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3557
    invoke-virtual {p0, p1, p2}, Landroid/server/BluetoothService;->getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3559
    :cond_1
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGattServiceProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3560
    const/4 v1, 0x0

    goto :goto_0

    .line 3550
    .end local v0           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getGattServices(Ljava/lang/String;Landroid/os/ParcelUuid;)Z
    .locals 10
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v6, 0x0

    .line 3888
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH"

    const-string v9, "Need BLUETOOTH permission"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-nez v7, :cond_1

    .line 3945
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 3891
    :cond_1
    :try_start_1
    const-string v7, "BluetoothService"

    const-string v8, "getGattServices"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3897
    const/4 v3, 0x1

    .line 3898
    .local v3, ret:Z
    const/4 v0, 0x0

    .line 3899
    .local v0, delay:Z
    const/4 v1, 0x0

    .line 3901
    .local v1, discovering:Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3902
    :try_start_2
    iget-object v7, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 3903
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3905
    if-nez v1, :cond_5

    .line 3906
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getRemoteGattServices(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->findDeviceNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3907
    iget-object v7, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v8, "Services"

    invoke-virtual {v7, p1, v8}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3908
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 3909
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No GATT based services were found on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    const/4 v3, 0x0

    .line 3920
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 3924
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3925
    :try_start_4
    iget-object v6, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3926
    iget-object v6, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3927
    .local v4, serviceUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v6, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3932
    :goto_2
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3933
    iget-object v6, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3934
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3936
    if-nez v1, :cond_3

    .line 3937
    :try_start_5
    iget-object v6, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3938
    .local v2, message:Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3939
    if-eqz v0, :cond_7

    .line 3940
    iget-object v6, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x7530

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3945
    .end local v2           #message:Landroid/os/Message;
    :cond_3
    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3903
    .end local v4           #serviceUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3888
    .end local v0           #delay:Z
    .end local v1           #discovering:Z
    .end local v3           #ret:Z
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 3913
    .restart local v0       #delay:Z
    .restart local v1       #discovering:Z
    .restart local v3       #ret:Z
    :cond_4
    :try_start_8
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Need to Create Remote Device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " before accessing properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z

    move-result v3

    .line 3915
    const/4 v0, 0x1

    goto :goto_1

    .line 3918
    :cond_5
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GATT service discovery for remote device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is in progress"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 3929
    :cond_6
    :try_start_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4       #serviceUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    goto :goto_2

    .line 3934
    .end local v4           #serviceUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v6

    .line 3942
    .restart local v2       #message:Landroid/os/Message;
    .restart local v4       #serviceUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :cond_7
    iget-object v6, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3
.end method

.method public getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 3043
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3046
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3047
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3060
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3063
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3065
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIncomingState(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3447
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3448
    invoke-direct {p0}, Landroid/server/BluetoothService;->createIncomingConnectionStateFile()V

    .line 3449
    invoke-direct {p0}, Landroid/server/BluetoothService;->readIncomingConnectionState()V

    .line 3451
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 2883
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2885
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 2906
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2908
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2909
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInputDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2898
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2900
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getKnownDevices()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 3161
    const/4 v0, 0x0

    .line 3162
    .local v0, bonds:[Ljava/lang/String;
    const-string v2, "Devices"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3163
    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3164
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3166
    :cond_0
    return-object v0
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "device"
    .parameter "config"

    .prologue
    .line 3011
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3014
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3015
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native getMainChannelNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v0, "Name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNumberOfApplicationStateChangeTrackers()I
    .locals 1

    .prologue
    .line 2336
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "address"

    .prologue
    .line 2756
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v1}, Landroid/server/BluetoothAdapterProperties;->getObjectPath()Ljava/lang/String;

    move-result-object v0

    .line 2757
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2758
    const-string v1, "BluetoothService"

    const-string v2, "Error: Object Path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    const/4 v1, 0x0

    .line 2762
    :goto_0
    return-object v1

    .line 2761
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2762
    goto :goto_0
.end method

.method public getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 2796
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2798
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPanDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2819
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2821
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2822
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0}, Landroid/server/BluetoothBondState;->getPendingOutgoingBonding()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .parameter "profile"

    .prologue
    .line 3279
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    iget-object v1, p0, Landroid/server/BluetoothService;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3282
    .local v0, state:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 3284
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method getProperty(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "checkState"

    .prologue
    const/4 v0, 0x0

    .line 1281
    if-eqz p2, :cond_1

    .line 1282
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1287
    :cond_0
    :goto_0
    return-object v0

    .line 1283
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    :cond_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Landroid/server/BluetoothAdapterProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 1408
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    const/4 v0, 0x0

    .line 1412
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Alias"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteClass(Ljava/lang/String;)I
    .locals 5
    .parameter "address"

    .prologue
    const/high16 v1, -0x100

    .line 1736
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1737
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1744
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1740
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Class"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1741
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1744
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1736
    .end local v0           #val:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "address"

    .prologue
    .line 1164
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "address"

    .prologue
    .line 1668
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteDeviceProperties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1672
    :goto_0
    return-object v1

    .line 1671
    :cond_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1672
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getRemoteFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "address"
    .parameter "feature"

    .prologue
    const/4 v1, 0x0

    .line 1879
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return-object v1

    .line 1882
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1886
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceFeatureCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1887
    .local v0, value:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1888
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRemoteL2capPsm(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .locals 5
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v1, -0x1

    .line 1903
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1919
    :cond_0
    :goto_0
    return v1

    .line 1906
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1907
    const/high16 v1, -0x8000

    goto :goto_0

    .line 1910
    :cond_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceProperties;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1911
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)V

    .line 1914
    :cond_3
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceL2capPsmCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1915
    .local v0, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1916
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 1391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    const/4 v0, 0x0

    .line 1395
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v1, "Name"

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .locals 5
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v1, -0x1

    .line 1846
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1864
    :cond_0
    :goto_0
    return v1

    .line 1849
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1850
    const/high16 v1, -0x8000

    goto :goto_0

    .line 1853
    :cond_2
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2}, Landroid/server/BluetoothDeviceProperties;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1854
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1858
    :cond_3
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1859
    .local v0, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1860
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1862
    :cond_4
    const-string v2, "BluetoothService"

    const-string v3, "Server Channel is -1, updating the cache"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 3
    .parameter "address"

    .prologue
    .line 1754
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1756
    const/4 v0, 0x0

    .line 1758
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScanMode()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1450
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1452
    const/16 v2, 0x14

    .line 1456
    :goto_0
    return v2

    .line 1454
    :cond_0
    const-string v2, "Pairable"

    invoke-virtual {p0, v2, v5}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1455
    .local v1, pairable:Z
    const-string v2, "Discoverable"

    invoke-virtual {p0, v2, v5}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1456
    .local v0, discoverable:Z
    invoke-static {v1, v0}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized getTrustState(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 1712
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1713
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1717
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v3, "Trusted"

    invoke-virtual {v2, p1, v3}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1718
    .local v0, val:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1721
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1712
    .end local v0           #val:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getUpdatedRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "address"
    .parameter "property"

    .prologue
    .line 1676
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1677
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 1678
    .local v1, propValues:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1679
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Map;

    .line 1680
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v2, p1, p2}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1683
    :goto_0
    return-object v2

    .line 1682
    :cond_0
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "not present:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 6
    .parameter "address"

    .prologue
    .line 1762
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v5, "UUIDs"

    invoke-virtual {v4, p1, v5}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1763
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 1773
    :cond_0
    return-object v2

    .line 1765
    :cond_1
    const/4 v1, 0x0

    .line 1767
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1768
    array-length v4, v1

    new-array v2, v4, [Landroid/os/ParcelUuid;

    .line 1770
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1771
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    .line 1323
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v1, "UUIDs"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1326
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method handleInputDevicePropertyChange(Ljava/lang/String;Z)V
    .locals 2
    .parameter "address"
    .parameter "connected"

    .prologue
    .line 2954
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2955
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    .line 2956
    monitor-exit v1

    .line 2957
    return-void

    .line 2956
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .parameter "device"
    .parameter "state"
    .parameter "role"

    .prologue
    .line 2844
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2845
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 2846
    monitor-exit v1

    .line 2847
    return-void

    .line 2846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V
    .locals 2
    .parameter "device"
    .parameter "iface"
    .parameter "state"
    .parameter "role"

    .prologue
    .line 2837
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2838
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/server/BluetoothPanProfileHandler;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 2839
    monitor-exit v1

    .line 2840
    return-void

    .line 2839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized initAfterA2dpRegistration()V
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v0}, Landroid/server/BluetoothEventLoop;->getProfileProxy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initAfterRegistration()V
    .locals 3

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 383
    new-instance v0, Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v0, v1, p0, v2}, Landroid/server/BluetoothAdapterStateMachine;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    .line 384
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->start()V

    .line 385
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "msm7630_surf"

    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "msm7630_fusion"

    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 391
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v0}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothEventLoop()Landroid/server/BluetoothEventLoop;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initBluetoothAfterTurningOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 909
    const-string v2, "Discoverable"

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, discoverable:Ljava/lang/String;
    const-string v2, "DiscoverableTimeout"

    invoke-virtual {p0, v2, v3}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, timeout:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    const-string v2, "Discoverable"

    invoke-direct {p0, v2, v3}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    .line 914
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v2}, Landroid/server/BluetoothBondState;->initBondState()V

    .line 915
    invoke-direct {p0}, Landroid/server/BluetoothService;->initProfileState()V

    .line 916
    invoke-direct {p0}, Landroid/server/BluetoothService;->getProfileProxy()V

    .line 917
    return-void
.end method

.method isApplicationStateChangeTrackerEmpty()Z
    .locals 1

    .prologue
    .line 2324
    iget-object v0, p0, Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isBluetoothDock(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    .line 1661
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_service_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1664
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock_bluetooth_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1661
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isDiscovering()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1479
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v2, "Discovering"

    invoke-virtual {p0, v2, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1482
    .local v0, discoveringProperty:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1486
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method declared-synchronized isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isFixedPinZerosAutoPairKeyboard(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isRemoteDeviceInCache(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->isInCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isServiceRegistered(Landroid/os/ParcelUuid;)Z
    .locals 4
    .parameter "uuid"

    .prologue
    const/4 v0, 0x0

    .line 414
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceRegistered UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez p1, :cond_0

    .line 427
    :goto_0
    return v0

    .line 417
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isFileTransfer(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mFTPEnabled:Z

    goto :goto_0

    .line 419
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isMessageAccessServer(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mMAPEnabled:Z

    goto :goto_0

    .line 421
    :cond_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isDun(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mDUNEnabled:Z

    goto :goto_0

    .line 423
    :cond_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isSap(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 424
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mSAPEnabled:Z

    goto :goto_0

    .line 426
    :cond_4
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported service UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isTetheringOn()Z
    .locals 3

    .prologue
    .line 2776
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2778
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->isTetheringOn()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2779
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized listBonds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1635
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1640
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->listInState(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method lookupInputDevicesMatchingStates([I)Ljava/util/List;
    .locals 2
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2948
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2949
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2950
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized makeDiscoverCharacteristicsCallback(Ljava/lang/String;Z)V
    .locals 6
    .parameter "servicePath"
    .parameter "result"

    .prologue
    .line 3768
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattServiceTracker:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattService;

    .line 3770
    .local v0, callback:Landroid/bluetooth/IBluetoothGattService;
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeDiscoverCharacteristicsCallback for service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    if-eqz v0, :cond_1

    .line 3773
    const/4 v1, 0x0

    .line 3774
    .local v1, charPaths:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 3775
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getCharacteristicsFromCache(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3777
    :cond_0
    :try_start_1
    invoke-interface {v0, v1, p2}, Landroid/bluetooth/IBluetoothGattService;->onCharacteristicsDiscovered([Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3786
    .end local v1           #charPaths:[Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 3778
    .restart local v1       #charPaths:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3779
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothService"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3780
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->forceCloseGattService(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3768
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattService;
    .end local v1           #charPaths:[Ljava/lang/String;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3784
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattService;
    :cond_1
    :try_start_3
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discover Characteristics Callback for  service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not queued"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized makeServiceChannelCallbacks(Ljava/lang/String;)V
    .locals 7
    .parameter "address"

    .prologue
    .line 2448
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2449
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2450
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$RemoteService;

    .line 2451
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v4, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2452
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up failed UUID channel lookup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2455
    .local v0, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v0, :cond_1

    .line 2457
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2461
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2448
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2458
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v3       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2464
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method declared-synchronized makeSetCharacteristicPropertyCallback(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "charPath"
    .parameter "property"
    .parameter "result"

    .prologue
    .line 3789
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeSetCharacteristicPropertyCallback for char: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3791
    if-nez p1, :cond_1

    .line 3814
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3795
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    const-string v4, "/characteristic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3797
    .local v2, servicePath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3801
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattServiceTracker:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3803
    .local v0, callback:Landroid/bluetooth/IBluetoothGattService;
    if-eqz v0, :cond_2

    .line 3805
    :try_start_2
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothGattService;->onSetCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3806
    :catch_0
    move-exception v1

    .line 3807
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "BluetoothService"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3808
    invoke-direct {p0, v2}, Landroid/server/BluetoothService;->forceCloseGattService(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3789
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattService;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #servicePath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3812
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattService;
    .restart local v2       #servicePath:Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Characteristics Property Callback for  service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not queued"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized makeUpdateCharacteristicValueCallback(Ljava/lang/String;Z)V
    .locals 6
    .parameter "charPath"
    .parameter "result"

    .prologue
    .line 3846
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "/characteristic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3848
    .local v2, servicePath:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 3866
    :goto_0
    monitor-exit p0

    return-void

    .line 3852
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattServiceTracker:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattService;

    .line 3854
    .local v0, callback:Landroid/bluetooth/IBluetoothGattService;
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeCharacteristicValueUpdatedCallback for service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3856
    if-eqz v0, :cond_1

    .line 3858
    :try_start_2
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothGattService;->onCharacteristicValueUpdated(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3859
    :catch_0
    move-exception v1

    .line 3860
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "BluetoothService"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3861
    invoke-direct {p0, v2}, Landroid/server/BluetoothService;->forceCloseGattService(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3846
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattService;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #servicePath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3864
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattService;
    .restart local v2       #servicePath:Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized makeWatcherValueChangedCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "charPath"
    .parameter "value"

    .prologue
    .line 3818
    monitor-enter p0

    if-nez p1, :cond_1

    .line 3842
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3822
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "/characteristic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3824
    .local v2, servicePath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3828
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WatcherValueChanged : service Path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattWatcherTracker:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3832
    .local v0, callback:Landroid/bluetooth/IBluetoothGattService;
    if-eqz v0, :cond_2

    .line 3834
    :try_start_1
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothGattService;->onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3835
    :catch_0
    move-exception v1

    .line 3836
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothService"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3837
    invoke-direct {p0, v2}, Landroid/server/BluetoothService;->forceCloseGattService(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3818
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattService;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #servicePath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3840
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattService;
    .restart local v2       #servicePath:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback for service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyConnectA2dp(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 3201
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3203
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3204
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3205
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3206
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3207
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3208
    const/4 v2, 0x1

    .line 3210
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "address"
    .parameter "rejected"

    .prologue
    const/4 v2, 0x1

    .line 3235
    iget-object v3, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3236
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_2

    .line 3237
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3238
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_1

    .line 3239
    iget-object v3, p0, Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    .line 3241
    const/16 v3, 0x67

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3242
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3243
    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v0, v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3252
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return v2

    .line 3247
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    const/4 v3, 0x4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 3248
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3252
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyIncomingConnection(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "address"
    .parameter "rejected"

    .prologue
    .line 3214
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3215
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_2

    .line 3216
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3217
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_1

    .line 3218
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 3220
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3221
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3222
    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3229
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 3231
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return v2

    .line 3226
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3227
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3231
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method notifyIncomingHidConnection(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 3069
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3070
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v1, :cond_0

    .line 3071
    const/4 v2, 0x0

    .line 3076
    :goto_0
    return v2

    .line 3073
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3074
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3075
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3076
    const/4 v2, 0x1

    goto :goto_0
.end method

.method declared-synchronized onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 1109
    monitor-enter p0

    if-nez p2, :cond_1

    .line 1110
    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 1111
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1115
    :cond_1
    const/16 v0, 0xa

    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 1116
    if-ne p2, v1, :cond_2

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1118
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1120
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1122
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1124
    :cond_3
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "devicePath"
    .parameter "channelPath"
    .parameter "exists"

    .prologue
    .line 3028
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3029
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3031
    monitor-exit v1

    .line 3032
    return-void

    .line 3031
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHealthDeviceChannelConnectionError(II)V
    .locals 2
    .parameter "channelCode"
    .parameter "newState"

    .prologue
    .line 3036
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3037
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDeviceChannelConnectionError(II)V

    .line 3039
    monitor-exit v1

    .line 3040
    return-void

    .line 3039
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "devicePath"
    .parameter "channelPath"

    .prologue
    .line 3020
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 3021
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    monitor-exit v1

    .line 3024
    return-void

    .line 3023
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized prepareBluetooth()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 628
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothService;->setupNativeDataNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 633
    :goto_0
    monitor-exit p0

    return v0

    .line 631
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 632
    invoke-direct {p0}, Landroid/server/BluetoothService;->updateSdpRecords()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    const/4 v0, 0x1

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readOutOfBandData()[B
    .locals 3

    .prologue
    .line 1585
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1589
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->readAdapterOutOfBandDataNative()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1585
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 3
    .parameter "config"
    .parameter "callback"

    .prologue
    .line 2964
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2967
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2968
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized registerCharacteristicsWatcher(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)Z
    .locals 4
    .parameter "path"
    .parameter "gattCallback"

    .prologue
    const/4 v0, 0x0

    .line 4039
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4040
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 4061
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 4042
    :cond_1
    :try_start_1
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "registerCharacteristicsWatcher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4045
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service not present "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4039
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4049
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattWatcherTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4051
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCharacteristicsWatcher: already registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4055
    :cond_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->registerCharacteristicsWatcherNative(Ljava/lang/String;)Z

    move-result v0

    .line 4057
    .local v0, ret:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4058
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattWatcherTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I
    .locals 3
    .parameter "callback"
    .parameter "desiredAmpPolicy"

    .prologue
    .line 2209
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object v0, p0, Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService$ConnectionManager;->registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I

    move-result v0

    return v0
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method native registerHealthApplicationNative(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public registerService(Landroid/os/ParcelUuid;Z)Z
    .locals 4
    .parameter "uuid"
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    .line 432
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerService UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "register = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-nez p1, :cond_0

    .line 449
    :goto_0
    return v0

    .line 435
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isFileTransfer(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroid/server/BluetoothService;->enableFTP()Z

    move-result v0

    goto :goto_0

    .line 437
    :cond_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableFTP()Z

    move-result v0

    goto :goto_0

    .line 438
    :cond_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isMessageAccessServer(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 439
    if-eqz p2, :cond_3

    invoke-direct {p0}, Landroid/server/BluetoothService;->enableMAP()Z

    move-result v0

    goto :goto_0

    .line 440
    :cond_3
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableMAP()Z

    move-result v0

    goto :goto_0

    .line 441
    :cond_4
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isDun(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 442
    if-eqz p2, :cond_5

    invoke-direct {p0}, Landroid/server/BluetoothService;->enableDUN()Z

    move-result v0

    goto :goto_0

    .line 443
    :cond_5
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableDUN()Z

    move-result v0

    goto :goto_0

    .line 444
    :cond_6
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isSap(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 445
    if-eqz p2, :cond_7

    invoke-direct {p0}, Landroid/server/BluetoothService;->enableSAP()Z

    move-result v0

    goto :goto_0

    .line 446
    :cond_7
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableSAP()Z

    move-result v0

    goto :goto_0

    .line 448
    :cond_8
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported service UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "register = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method native releaseChannelFdNative(Ljava/lang/String;)Z
.end method

.method declared-synchronized removeAllProfileState()V
    .locals 3

    .prologue
    .line 3144
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3145
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 3146
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3144
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3149
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3150
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeBond(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 1612
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1624
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1616
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1619
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 1620
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v0, :cond_0

    .line 1621
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1622
    const/4 v1, 0x1

    goto :goto_0

    .line 1612
    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeBondInternal(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1630
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    .line 1631
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeDeviceNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeGattServiceProperties(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 3607
    iget-object v0, p0, Landroid/server/BluetoothService;->mGattProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    return-void
.end method

.method removeProfileState(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 3153
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 3154
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-nez v0, :cond_0

    .line 3158
    :goto_0
    return-void

    .line 3156
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->quit()V

    .line 3157
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeServiceRecord(I)V
    .locals 4
    .parameter "handle"

    .prologue
    .line 2199
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 2206
    :goto_0
    return-void

    .line 2203
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2204
    .local v0, message:Landroid/os/Message;
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2205
    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method runBluetooth()V
    .locals 5

    .prologue
    .line 925
    invoke-direct {p0}, Landroid/server/BluetoothService;->autoConnect()V

    .line 928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 930
    .local v1, ident:J
    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "BluetoothService"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public declared-synchronized sapAuthorize(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "address"
    .parameter "access"

    .prologue
    const/4 v1, 0x0

    .line 1951
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1965
    :goto_0
    monitor-exit p0

    return v1

    .line 1956
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1957
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getAuthorizationRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1958
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1959
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sapAuthorize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1951
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1965
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->sapAuthorizeNative(Ljava/lang/String;ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4
    .parameter "device"
    .parameter "profile"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 3341
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 3374
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3343
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->validateProfileConnectionState(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3349
    :cond_2
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendConnectionStateChange: prevState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3341
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3354
    :cond_3
    :try_start_2
    invoke-direct {p0, p2, p3, p4}, Landroid/server/BluetoothService;->updateProfileConnectionState(III)V

    .line 3356
    invoke-direct {p0, p3, p4}, Landroid/server/BluetoothService;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3357
    iput p3, p0, Landroid/server/BluetoothService;->mAdapterConnectionState:I

    .line 3359
    if-nez p3, :cond_4

    .line 3360
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 3363
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3364
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3365
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-direct {p0, p3}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3367
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-direct {p0, p4}, Landroid/server/BluetoothService;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3369
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3370
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3371
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTION_STATE_CHANGE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method declared-synchronized sendGattIntent(Ljava/lang/String;I)V
    .locals 14
    .parameter "address"
    .parameter "result"

    .prologue
    .line 3690
    monitor-enter p0

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.bluetooth.device.action.GATT"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3691
    .local v5, intent:Landroid/content/Intent;
    const/4 v9, 0x0

    .line 3693
    .local v9, uuids:[Landroid/os/ParcelUuid;
    const/4 v1, 0x1

    .line 3695
    .local v1, count:I
    const/4 v6, 0x0

    .line 3697
    .local v6, isScheduled:Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3698
    :try_start_1
    iget-object v11, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3700
    iget-object v11, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 3701
    .local v8, serviceUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    const/4 v6, 0x1

    .line 3703
    if-eqz v8, :cond_0

    .line 3704
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v9, v11, [Landroid/os/ParcelUuid;

    .line 3705
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [Landroid/os/ParcelUuid;

    move-object v9, v0

    .line 3708
    :cond_0
    const-string v11, "BluetoothService"

    const-string v12, "Clear GATT INTENT tracker"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    iget-object v11, p0, Landroid/server/BluetoothService;->mGattIntentTracker:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3711
    .end local v8           #serviceUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3713
    if-nez v6, :cond_3

    .line 3752
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 3711
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3690
    .end local v1           #count:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #isScheduled:Z
    .end local v9           #uuids:[Landroid/os/ParcelUuid;
    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 3716
    .restart local v1       #count:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #isScheduled:Z
    .restart local v9       #uuids:[Landroid/os/ParcelUuid;
    :cond_3
    if-eqz v9, :cond_4

    .line 3717
    :try_start_4
    array-length v1, v9

    .line 3718
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 3720
    aget-object v11, v9, v4

    invoke-direct {p0, p1, v11}, Landroid/server/BluetoothService;->matchGattService(Ljava/lang/String;Landroid/os/ParcelUuid;)[Ljava/lang/String;

    move-result-object v2

    .line 3722
    .local v2, gattPath:[Ljava/lang/String;
    const-string v11, "android.bluetooth.device.extra.DEVICE"

    iget-object v12, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3723
    const-string v11, "android.bluetooth.device.extra.UUID"

    aget-object v12, v9, v4

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3724
    const-string v11, "android.bluetooth.device.extra.GATT"

    invoke-virtual {v5, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3725
    const-string v11, "android.bluetooth.device.extra.GATT_RESULT"

    move/from16 v0, p2

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3726
    iget-object v11, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v11, v5, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3718
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3729
    .end local v2           #gattPath:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_4
    const-string v11, "BluetoothService"

    const-string v12, "Send intents about all services found on the remote devices"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    iget-object v11, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    const-string v12, "Services"

    invoke-virtual {v11, p1, v12}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3732
    .local v10, value:Ljava/lang/String;
    if-nez v10, :cond_5

    .line 3733
    const-string v11, "BluetoothService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No GATT based services were found on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3736
    :cond_5
    const-string v11, "BluetoothService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GattServices: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    const/4 v3, 0x0

    .line 3740
    .local v3, gattServicePaths:[Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3743
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    array-length v11, v3

    if-ge v4, v11, :cond_2

    .line 3744
    aget-object v11, v3, v4

    const-string v12, "UUID"

    invoke-virtual {p0, v11, v12}, Landroid/server/BluetoothService;->getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3745
    .local v7, serviceUuid:Ljava/lang/String;
    const-string v11, "android.bluetooth.device.extra.DEVICE"

    iget-object v12, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3746
    const-string v11, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v5, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3747
    const-string v11, "android.bluetooth.device.extra.GATT"

    aget-object v12, v3, v4

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3748
    const-string v11, "android.bluetooth.device.extra.GATT_RESULT"

    move/from16 v0, p2

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3749
    iget-object v11, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v11, v5, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3743
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public sendProfileStateMessage(II)V
    .locals 2
    .parameter "profile"
    .parameter "cmd"

    .prologue
    .line 3265
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3266
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 3267
    if-nez p1, :cond_1

    .line 3268
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 3272
    :cond_0
    :goto_0
    return-void

    .line 3269
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3270
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method declared-synchronized sendUuidIntent(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 2439
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 2440
    .local v1, uuid:[Landroid/os/ParcelUuid;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2441
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2442
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2443
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2444
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2445
    monitor-exit p0

    return-void

    .line 2439
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uuid:[Landroid/os/ParcelUuid;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setA2dpService(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "a2dpService"

    .prologue
    .line 3256
    iput-object p1, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 3257
    return-void
.end method

.method native setAuthorizationNative(Ljava/lang/String;ZI)Z
.end method

.method public setBluetoothClass(Ljava/lang/String;I)Z
    .locals 4
    .parameter "address"
    .parameter "classOfDevice"

    .prologue
    const/4 v0, 0x0

    .line 1347
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1348
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    :cond_0
    :goto_0
    return v0

    .line 1353
    :cond_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Class"

    invoke-direct {p0, v0, v1, p2}, Landroid/server/BluetoothService;->setDevicePropertyIntegerNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setBluetoothTethering(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2789
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    monitor-enter v1

    .line 2791
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothPanProfileHandler;->setBluetoothTethering(Z)V

    .line 2792
    monitor-exit v1

    .line 2793
    return-void

    .line 2792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method declared-synchronized setBondState(Ljava/lang/String;I)Z
    .locals 1
    .parameter "address"
    .parameter "state"

    .prologue
    .line 1652
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBondState(Ljava/lang/String;II)Z
    .locals 2
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 1656
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/server/BluetoothBondState;->setBondState(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 8
    .parameter "path"
    .parameter "key"
    .parameter "value"
    .parameter "reliable"

    .prologue
    const/4 v6, 0x0

    .line 3991
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3992
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 4011
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 3994
    :cond_1
    if-eqz p1, :cond_0

    .line 3998
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/characteristic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4000
    .local v7, servicePath:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 4004
    iget-object v0, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v0, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4005
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service not present "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3991
    .end local v7           #servicePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4009
    .restart local v7       #servicePath:Ljava/lang/String;
    :cond_2
    :try_start_2
    array-length v4, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/server/BluetoothService;->setCharacteristicPropertyNative(Ljava/lang/String;Ljava/lang/String;[BIZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 4011
    .local v6, ret:Z
    goto :goto_0
.end method

.method public setDesiredAmpPolicy(II)Z
    .locals 3
    .parameter "handle"
    .parameter "policy"

    .prologue
    .line 2227
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService$ConnectionManager;->setDesiredAmpPolicy(II)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z
    .locals 4
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    .line 1564
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1576
    :goto_0
    monitor-exit p0

    return v1

    .line 1568
    :cond_0
    :try_start_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1571
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting out of band data for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1576
    const/4 v1, 0x1

    goto :goto_0

    .line 1564
    .end local v0           #value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDiscoverableTimeout(I)Z
    .locals 3
    .parameter "timeout"

    .prologue
    .line 1221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v0, "DiscoverableTimeout"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 2913
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    .line 2916
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothInputProfileHandler:Landroid/server/BluetoothInputProfileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLEConnectionParams(Ljava/lang/String;IIII)Z
    .locals 6
    .parameter "address"
    .parameter "intervalMin"
    .parameter "intervalMax"
    .parameter "slaveLatency"
    .parameter "supervisionTimeout"

    .prologue
    const/4 v0, 0x0

    .line 1364
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1365
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_0
    :goto_0
    return v0

    .line 1370
    :cond_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1372
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/server/BluetoothService;->setConnectionParametersNative(Ljava/lang/String;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method setLinkTimeout(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "num_slots"

    .prologue
    .line 2766
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2767
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/server/BluetoothService;->setLinkTimeoutNative(Ljava/lang/String;I)Z

    move-result v1

    .line 2769
    .local v1, result:Z
    if-nez v1, :cond_0

    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Link Timeout to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slots failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :cond_0
    return-void
.end method

.method public declared-synchronized setName(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 1181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    if-nez p1, :cond_0

    .line 1184
    const/4 v0, 0x0

    .line 1186
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "Name"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setPairable()V
    .locals 3

    .prologue
    .line 1268
    monitor-enter p0

    :try_start_0
    const-string v1, "Pairable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1269
    .local v0, pairableString:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1270
    const-string v1, "BluetoothService"

    const-string/jumbo v2, "null pairableString"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1273
    :cond_1
    :try_start_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    const-string v1, "Pairable"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1268
    .end local v0           #pairableString:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPairingConfirmation(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "address"
    .parameter "confirm"

    .prologue
    const/4 v1, 0x0

    .line 1988
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 2000
    :goto_0
    monitor-exit p0

    return v1

    .line 1992
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1993
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1994
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1995
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1988
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2000
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPairingConfirmationNative(Ljava/lang/String;ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized setPasskey(Ljava/lang/String;I)Z
    .locals 5
    .parameter "address"
    .parameter "passkey"

    .prologue
    const/4 v1, 0x0

    .line 1969
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1984
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1973
    :cond_1
    if-ltz p2, :cond_0

    const v2, 0xf423f

    if-gt p2, v2, :cond_0

    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1976
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1977
    iget-object v2, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v2}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1978
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 1979
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPasskey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called but no native data available, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or by bluez.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1969
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1984
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPasskeyNative(Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized setPin(Ljava/lang/String;[B)Z
    .locals 7
    .parameter "address"
    .parameter "pin"

    .prologue
    const/4 v3, 0x0

    .line 1923
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 1947
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 1927
    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    array-length v4, p2

    if-lez v4, :cond_0

    array-length v4, p2

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1931
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1932
    iget-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v4}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1933
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 1934
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPin("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") called but no native data available, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or by bluez.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1923
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1942
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF8"

    invoke-direct {v1, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1947
    .local v1, pinString:Ljava/lang/String;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Landroid/server/BluetoothService;->setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_0

    .line 1943
    .end local v1           #pinString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1944
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v4, "BluetoothService"

    const-string v5, "UTF8 not supported?!?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "address"
    .parameter "alias"

    .prologue
    .line 1423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    const/4 v0, 0x0

    .line 1428
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alias"

    invoke-direct {p0, v0, v1, p2}, Landroid/server/BluetoothService;->setDevicePropertyStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1303
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothDeviceProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method public declared-synchronized setRemoteOutOfBandData(Ljava/lang/String;)Z
    .locals 8
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 2004
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    const-string v7, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 2026
    :goto_0
    monitor-exit p0

    return v4

    .line 2007
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2008
    iget-object v5, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v5}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2009
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 2010
    const-string v5, "BluetoothService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRemoteOobData("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") called but no native data available, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or by bluez.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2004
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2016
    .restart local v0       #data:Ljava/lang/Integer;
    :cond_1
    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2018
    .local v3, val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    if-nez v3, :cond_2

    .line 2020
    const/16 v4, 0x10

    new-array v1, v4, [B

    .line 2021
    .local v1, hash:[B
    const/16 v4, 0x10

    new-array v2, v4, [B

    .line 2026
    .local v2, randomizer:[B
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/server/BluetoothService;->setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z

    move-result v4

    goto :goto_0

    .line 2023
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    :cond_2
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    .line 2024
    .restart local v1       #hash:[B
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v2       #randomizer:[B
    goto :goto_1
.end method

.method public declared-synchronized setScanMode(II)Z
    .locals 5
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 1227
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v4, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    packed-switch p1, :pswitch_data_0

    .line 1247
    :pswitch_0
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested invalid scan mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    const/4 v2, 0x0

    .line 1253
    :goto_0
    monitor-exit p0

    return v2

    .line 1234
    :pswitch_1
    const/4 v1, 0x0

    .line 1235
    .local v1, pairable:Z
    const/4 v0, 0x0

    .line 1251
    .local v0, discoverable:Z
    :goto_1
    :try_start_1
    const-string v2, "Discoverable"

    invoke-direct {p0, v2, v0}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1252
    const-string v2, "Pairable"

    invoke-direct {p0, v2, v1}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1253
    const/4 v2, 0x1

    goto :goto_0

    .line 1238
    .end local v0           #discoverable:Z
    .end local v1           #pairable:Z
    :pswitch_2
    const/4 v1, 0x1

    .line 1239
    .restart local v1       #pairable:Z
    const/4 v0, 0x0

    .line 1240
    .restart local v0       #discoverable:Z
    goto :goto_1

    .line 1242
    .end local v0           #discoverable:Z
    .end local v1           #pairable:Z
    :pswitch_3
    const/4 v1, 0x1

    .line 1243
    .restart local v1       #pairable:Z
    const/4 v0, 0x1

    .line 1244
    .restart local v0       #discoverable:Z
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT Discoverable for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1227
    .end local v0           #discoverable:Z
    .end local v1           #pairable:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1232
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setTrust(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1692
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1693
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1698
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1700
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trusted"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v1, v2, v0}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1692
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseWifiForBtTransfers(Z)V
    .locals 3
    .parameter "useWifi"

    .prologue
    .line 2233
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    iget-object v0, p0, Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$ConnectionManager;->setUseWifiForBtTransfers(Z)V

    .line 2236
    return-void
.end method

.method declared-synchronized shutoffBluetooth()V
    .locals 3

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterSdpHandles:[I

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeReservedServiceRecordsNative([I)Z

    .line 570
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "nap"

    const-string/jumbo v2, "pan1"

    invoke-virtual {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setBluetoothTetheringNative(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 576
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableFTP()Z

    .line 577
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableDUN()Z

    .line 578
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableSAP()Z

    .line 579
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableMAP()Z

    .line 580
    invoke-direct {p0}, Landroid/server/BluetoothService;->tearDownNativeDataNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscovery()Z
    .locals 3

    .prologue
    .line 1460
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1467
    :goto_0
    monitor-exit p0

    return v0

    .line 1465
    :cond_0
    :try_start_1
    const-string v0, "**** startDiscovery"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1467
    invoke-direct {p0}, Landroid/server/BluetoothService;->startDiscoveryNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRemoteGattService(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)Z
    .locals 6
    .parameter "path"
    .parameter "gattCallback"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4083
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    const-string v5, "Need BLUETOOTH permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4084
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 4105
    :goto_0
    monitor-exit p0

    return v1

    .line 4086
    :cond_0
    :try_start_1
    const-string v3, "BluetoothService"

    const-string/jumbo v4, "startRemoteGattService("

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    iget-object v3, p0, Landroid/server/BluetoothService;->mGattServiceTracker:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4090
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemoteGattService: callback already registered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4083
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4094
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattServiceTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4096
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4097
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v1, v2

    .line 4105
    goto :goto_0

    .line 4099
    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4100
    .local v0, refCount:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4101
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4102
    iget-object v1, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v1, p1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized switchConnectable(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1264
    monitor-enter p0

    :try_start_0
    const-string v1, "Powered"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    monitor-exit p0

    return-void

    .line 1264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3
    .parameter "config"

    .prologue
    .line 2972
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    .line 2975
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBluetoothHealthProfileHandler:Landroid/server/BluetoothHealthProfileHandler;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothHealthProfileHandler;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2976
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method native unregisterHealthApplicationNative(Ljava/lang/String;)Z
.end method

.method declared-synchronized updateBluetoothState(Ljava/lang/String;)V
    .locals 3
    .parameter "uuids"

    .prologue
    .line 895
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->convertStringToParcelUuid(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 897
    .local v0, adapterUuids:[Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothService;->mAdapterUuids:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :cond_0
    monitor-exit p0

    return-void

    .line 895
    .end local v0           #adapterUuids:[Landroid/os/ParcelUuid;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateCharacteristicValue(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 4015
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4016
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 4035
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 4018
    :cond_1
    :try_start_1
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "updateCharacteristicValue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    if-eqz p1, :cond_0

    .line 4024
    const/4 v2, 0x0

    const-string v3, "/characteristic"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4026
    .local v0, servicePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4030
    iget-object v2, p0, Landroid/server/BluetoothService;->mGattServices:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4031
    const-string v2, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service not present "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4015
    .end local v0           #servicePath:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4035
    .restart local v0       #servicePath:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->updateCharacteristicValueNative(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method updateDeviceServiceChannelCache(Ljava/lang/String;)V
    .locals 24
    .parameter "address"

    .prologue
    .line 2051
    invoke-direct/range {p0 .. p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v21

    if-nez v21, :cond_0

    .line 2052
    const-string v21, "Bluetooth is not on"

    invoke-static/range {v21 .. v21}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2150
    :goto_0
    return-void

    .line 2056
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v9

    .line 2063
    .local v9, deviceUuids:[Landroid/os/ParcelUuid;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 2065
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2067
    .local v4, applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    .line 2068
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/server/BluetoothService$RemoteService;

    .line 2069
    .local v18, service:Landroid/server/BluetoothService$RemoteService;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 2070
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2073
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v18           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v21

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2075
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 2076
    .local v17, rfcommValue:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 2077
    .local v14, l2capPsmValue:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2080
    .local v11, feature:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .local v5, arr$:[Landroid/os/ParcelUuid;
    array-length v15, v5

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v15, :cond_5

    aget-object v20, v5, v12

    .line 2081
    .local v20, uuid:Landroid/os/ParcelUuid;
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2082
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 2084
    .local v16, psm:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\tuuid(system): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " PSM: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2086
    const/4 v6, 0x4

    .line 2088
    .local v6, attributeId:I
    invoke-static/range {v20 .. v20}, Landroid/bluetooth/BluetoothUuid;->isPrintingStatus(Landroid/os/ParcelUuid;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2089
    const/16 v6, 0xd

    .line 2091
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v6}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 2093
    .local v8, channel:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\tuuid(system): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " SCN: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2096
    invoke-static/range {v20 .. v20}, Landroid/bluetooth/BluetoothUuid;->isDirectPrinting(Landroid/os/ParcelUuid;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2098
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x350

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceStringAttrValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 2100
    .local v19, supportedFormats:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\tSupportedFormats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2101
    const-string v21, "SupportedFormats"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceFeatureCache:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    .end local v6           #attributeId:I
    .end local v8           #channel:I
    .end local v16           #psm:I
    .end local v19           #supportedFormats:Ljava/lang/String;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 2108
    .end local v20           #uuid:Landroid/os/ParcelUuid;
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/ParcelUuid;

    .line 2109
    .restart local v20       #uuid:Landroid/os/ParcelUuid;
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 2110
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 2112
    .restart local v16       #psm:I
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 2114
    .restart local v8       #channel:I
    const-string v21, "BluetoothService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\tuuid(application): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " SCN: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " PSM: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2121
    .end local v8           #channel:I
    .end local v16           #psm:I
    .end local v20           #uuid:Landroid/os/ParcelUuid;
    :cond_7
    monitor-enter p0

    .line 2123
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2124
    .local v13, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_8
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 2125
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/server/BluetoothService$RemoteService;

    .line 2126
    .restart local v18       #service:Landroid/server/BluetoothService$RemoteService;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 2127
    const/4 v8, -0x1

    .line 2128
    .restart local v8       #channel:I
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 2129
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2131
    :cond_9
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v8, v0, :cond_8

    .line 2132
    const-string v21, "BluetoothService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Making callback for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " with result "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/IBluetoothCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2135
    .local v7, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v7, :cond_a

    .line 2137
    :try_start_3
    invoke-interface {v7, v8}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2141
    :cond_a
    :goto_5
    :try_start_4
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 2149
    .end local v7           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v8           #channel:I
    .end local v13           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v18           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_1
    move-exception v21

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v21

    .line 2138
    .restart local v7       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v8       #channel:I
    .restart local v13       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v18       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_0
    move-exception v10

    .local v10, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v21, "BluetoothService"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2147
    .end local v7           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v8           #channel:I
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v18           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceL2capPsmCache:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method declared-synchronized updateGattServicePropertiesCache(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 3564
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getGattServicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 3565
    .local v1, propValues:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3566
    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothService;->addGattServiceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3567
    const/4 v2, 0x1

    .line 3569
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3564
    .end local v1           #propValues:[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method updateRemoteDevicePropertiesCache(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 1307
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Landroid/server/BluetoothDeviceProperties;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothDeviceProperties;->updateCache(Ljava/lang/String;)Ljava/util/Map;

    .line 1308
    return-void
.end method

.method public writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 11
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3510
    .local p2, data:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v8

    .line 3511
    :try_start_0
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3513
    invoke-direct {p0}, Landroid/server/BluetoothService;->truncateIncomingConnectionFile()V

    .line 3514
    const/4 v3, 0x0

    .line 3515
    .local v3, out:Ljava/io/BufferedWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3517
    .local v6, value:Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3518
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3519
    .local v0, devAddress:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3520
    .local v5, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3521
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3522
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3524
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3525
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 3528
    .end local v0           #devAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 3529
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3533
    if-eqz v3, :cond_0

    .line 3535
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3541
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3542
    return-void

    .line 3527
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_1
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3533
    if-eqz v4, :cond_3

    .line 3535
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v3, v4

    .line 3538
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 3536
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v7

    move-object v3, v4

    .line 3538
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 3530
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v1

    .line 3531
    .local v1, e:Ljava/io/IOException;
    :goto_3
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3533
    if-eqz v3, :cond_0

    .line 3535
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 3536
    :catch_3
    move-exception v7

    goto :goto_2

    .line 3533
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_2

    .line 3535
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 3538
    :cond_2
    :goto_5
    :try_start_b
    throw v7

    .line 3541
    .end local v3           #out:Ljava/io/BufferedWriter;
    .end local v6           #value:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v7

    .line 3536
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v6       #value:Ljava/lang/StringBuilder;
    :catch_4
    move-exception v7

    goto :goto_2

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v9

    goto :goto_5

    .line 3533
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 3530
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 3528
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_3
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2
.end method
