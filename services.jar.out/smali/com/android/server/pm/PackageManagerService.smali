.class public Lcom/android/server/pm/PackageManagerService;
.super Landroid/content/pm/IPackageManager$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$DumpState;,
        Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;,
        Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;,
        Lcom/android/server/pm/PackageManagerService$SdInstallArgs;,
        Lcom/android/server/pm/PackageManagerService$FileInstallArgs;,
        Lcom/android/server/pm/PackageManagerService$InstallArgs;,
        Lcom/android/server/pm/PackageManagerService$MoveParams;,
        Lcom/android/server/pm/PackageManagerService$InstallParams;,
        Lcom/android/server/pm/PackageManagerService$MeasureParams;,
        Lcom/android/server/pm/PackageManagerService$HandlerParams;,
        Lcom/android/server/pm/PackageManagerService$AppDirObserver;,
        Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;,
        Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;,
        Lcom/android/server/pm/PackageManagerService$PackageHandler;,
        Lcom/android/server/pm/PackageManagerService$PostInstallData;,
        Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    }
.end annotation


# static fields
.field private static final ADD_EVENTS:I = 0x88

.field static final BROADCAST_DELAY:I = 0x2710

.field static final CHECK_PENDING_VERIFICATION:I = 0x10

.field private static final DEBUG_APP_DIR_OBSERVER:Z = false

.field private static final DEBUG_INSTALL:Z = false

.field private static final DEBUG_INTENT_MATCHING:Z = false

.field private static final DEBUG_PACKAGE_INFO:Z = false

.field private static final DEBUG_PACKAGE_SCANNING:Z = false

.field private static final DEBUG_PREFERRED:Z = false

.field private static final DEBUG_REMOVE:Z = false

.field static final DEBUG_SD_INSTALL:Z = false

.field static final DEBUG_SETTINGS:Z = false

.field private static final DEBUG_SHOW_INFO:Z = false

.field static final DEBUG_UPGRADE:Z = false

.field private static final DEBUG_VERIFY:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field private static final DEFAULT_VERIFICATION_TIMEOUT:J = 0xea60L

.field private static final DEFAULT_VERIFY_ENABLE:Z = false

.field static final DEX_OPT_DEFERRED:I = 0x2

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final END_COPY:I = 0x4

.field static final FIND_INSTALL_LOC:I = 0x8

.field static final FIRST_APPLICATION_UID:I = 0x2710

.field private static final FM_RADIO_UID:I = 0x404

.field private static final GET_CERTIFICATES:Z = true

.field static final INIT_COPY:I = 0x5

.field private static final INSTALL_PACKAGE_SUFFIX:Ljava/lang/String; = "-"

.field private static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final LOG_UID:I = 0x3ef

.field static final MAX_APPLICATION_UIDS:I = 0x3e8

.field static final MCS_BOUND:I = 0x3

.field static final MCS_GIVE_UP:I = 0xb

.field static final MCS_RECONNECT:I = 0xa

.field static final MCS_UNBIND:I = 0x6

.field static final MULTIPLE_APPLICATION_UIDS:Z = true

.field private static final NFC_UID:I = 0x403

.field private static final OBSERVER_EVENTS:I = 0x2c8

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field static final PACKAGE_VERIFIED:I = 0xf

.field static final POST_INSTALL:I = 0x9

.field private static final RADIO_UID:I = 0x3e9

.field static final REMOVE_CHATTY:I = 0x10000

.field private static final REMOVE_EVENTS:I = 0x248

.field static final SCAN_DEFER_DEX:I = 0x80

.field static final SCAN_FORCE_DEX:I = 0x4

.field static final SCAN_MONITOR:I = 0x1

.field static final SCAN_NEW_INSTALL:I = 0x10

.field static final SCAN_NO_DEX:I = 0x2

.field static final SCAN_NO_PATHS:I = 0x20

.field static final SCAN_UPDATE_SIGNATURE:I = 0x8

.field static final SCAN_UPDATE_TIME:I = 0x40

.field private static final SD_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final SD_ENCRYPTION_KEYSTORE_NAME:Ljava/lang/String; = "AppsOnSD"

.field static final SEND_PENDING_BROADCAST:I = 0x1

.field static final START_CLEANING_PACKAGE:I = 0x7

.field static final TAG:Ljava/lang/String; = "PackageManager"

.field static final UPDATED_MEDIA_STATUS:I = 0xc

.field static final WRITE_SETTINGS:I = 0xd

.field static final WRITE_SETTINGS_DELAY:I = 0x2710

.field static final WRITE_STOPPED_PACKAGES:I = 0xe

.field private static final mProviderInitOrderSorter:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mResolvePrioritySorter:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final mTempContainerPrefix:Ljava/lang/String; = "smdl2tmp"


# instance fields
.field final mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

.field mAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field final mAppDataDir:Ljava/io/File;

.field final mAppDirs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mAppInstallDir:Ljava/io/File;

.field final mAppInstallObserver:Landroid/os/FileObserver;

.field final mAvailableFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field final mContext:Landroid/content/Context;

.field final mDalvikCacheDir:Ljava/io/File;

.field private final mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

.field final mDefParseFlags:I

.field final mDeferredDexOpt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mDrmAppInstallObserver:Landroid/os/FileObserver;

.field final mDrmAppPrivateInstallDir:Ljava/io/File;

.field final mFactoryTest:Z

.field final mFrameworkDir:Ljava/io/File;

.field final mFrameworkInstallObserver:Landroid/os/FileObserver;

.field mGlobalGids:[I

.field final mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field mHasSystemUidErrors:Z

.field final mInstallLock:Ljava/lang/Object;

.field final mInstaller:Lcom/android/server/pm/Installer;

.field final mInstrumentation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field mLastScanError:I

.field private mMediaMounted:Z

.field final mMetrics:Landroid/util/DisplayMetrics;

.field mNextInstallToken:I

.field final mNoDexOpt:Z

.field final mOnlyCore:Z

.field final mOutPermissions:[I

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingBroadcasts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPendingVerification:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PackageVerificationState;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingVerificationToken:I

.field final mPermissionGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field mPlatformPackage:Landroid/content/pm/PackageParser$Package;

.field final mProtectedBroadcasts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mProvidersByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mReceivers:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

.field private final mRequiredVerifierPackage:Ljava/lang/String;

.field final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field mResolveComponentName:Landroid/content/ComponentName;

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRestoredSettings:Z

.field final mRunningInstalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PackageManagerService$PostInstallData;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScanningPath:Ljava/io/File;

.field final mSdkCodename:Ljava/lang/String;

.field final mSdkVersion:I

.field final mSeparateProcesses:[Ljava/lang/String;

.field final mServices:Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;

.field final mSettings:Lcom/android/server/pm/Settings;

.field final mSharedLibraries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemAppDir:Ljava/io/File;

.field final mSystemInstallObserver:Landroid/os/FileObserver;

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field mTmpSharedLibraries:[Ljava/lang/String;

.field final mTransferedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUserAppDataDir:Ljava/io/File;

.field final mUserManager:Lcom/android/server/pm/UserManager;

.field final mVendorAppDir:Ljava/io/File;

.field final mVendorInstallObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 4697
    new-instance v0, Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    .line 4727
    new-instance v0, Lcom/android/server/pm/PackageManagerService$4;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$4;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 34
    .parameter "context"
    .parameter "factoryTest"
    .parameter "onlyCore"

    .prologue
    .line 861
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V

    .line 222
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PackageManager"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 226
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 227
    const-string v2, "REL"

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSdkCodename:Ljava/lang/String;

    .line 278
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 283
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    .line 290
    const/4 v2, 0x3

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mOutPermissions:[I

    .line 297
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .line 308
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 313
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    .line 316
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    .line 320
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    .line 324
    new-instance v2, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    .line 328
    new-instance v2, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mReceivers:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    .line 332
    new-instance v2, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mServices:Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;

    .line 335
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    .line 340
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    .line 344
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    .line 348
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    .line 353
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    .line 356
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    .line 359
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDeferredDexOpt:Ljava/util/ArrayList;

    .line 366
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 373
    new-instance v2, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 374
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 379
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    .line 384
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 409
    new-instance v2, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    .line 435
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 436
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 8050
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/PackageManagerService;->mMediaMounted:Z

    .line 862
    const/16 v2, 0xbf4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 865
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    if-gtz v2, :cond_0

    .line 866
    const-string v2, "PackageManager"

    const-string v3, "**** ro.build.version.sdk not set!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 870
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 871
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    .line 872
    const-string v2, "eng"

    const-string v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/PackageManagerService;->mNoDexOpt:Z

    .line 873
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 874
    new-instance v2, Lcom/android/server/pm/Settings;

    invoke-direct {v2}, Lcom/android/server/pm/Settings;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v3, "android.uid.system"

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v3, "android.uid.phone"

    const/16 v4, 0x3e9

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v3, "android.uid.log"

    const/16 v4, 0x3ef

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v3, "android.uid.nfc"

    const/16 v4, 0x403

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v3, "android.uid.fm_radio"

    const/16 v4, 0x404

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    .line 894
    const-string v2, "debug.separate_processes"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 895
    .local v28, separateProcesses:Ljava/lang/String;
    if-eqz v28, :cond_5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 896
    const-string v2, "*"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 897
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 898
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 899
    const-string v2, "PackageManager"

    const-string v3, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :goto_1
    new-instance v2, Lcom/android/server/pm/Installer;

    invoke-direct {v2}, Lcom/android/server/pm/Installer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 913
    const-string v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/WindowManager;

    .line 914
    .local v31, wm:Landroid/view/WindowManager;
    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 915
    .local v9, d:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 919
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 920
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 921
    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 923
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    .line 924
    .local v10, dataDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "data"

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAppDataDir:Ljava/io/File;

    .line 925
    new-instance v2, Ljava/io/File;

    const-string v3, "user"

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mUserAppDataDir:Ljava/io/File;

    .line 926
    new-instance v2, Ljava/io/File;

    const-string v3, "app-private"

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    .line 928
    new-instance v2, Lcom/android/server/pm/UserManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mUserAppDataDir:Ljava/io/File;

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/UserManager;-><init>(Lcom/android/server/pm/Installer;Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManager;

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->readPermissions()V

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->readLPw()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/PackageManagerService;->mRestoredSettings:Z

    .line 933
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29

    .line 935
    .local v29, startTime:J
    const/16 v2, 0xbfe

    move-wide/from16 v0, v29

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 940
    const/16 v27, 0xa1

    .line 941
    .local v27, scanMode:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService;->mNoDexOpt:Z

    if-eqz v2, :cond_1

    .line 942
    const-string v2, "PackageManager"

    const-string v3, "Running ENG build: no pre-dexopt!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    or-int/lit8 v27, v27, 0x2

    .line 946
    :cond_1
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 948
    .local v19, libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    .line 949
    new-instance v2, Ljava/io/File;

    const-string v3, "dalvik-cache"

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    .line 951
    const/4 v12, 0x0

    .line 957
    .local v12, didDexOpt:Z
    const-string v2, "java.boot.class.path"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 958
    .local v8, bootClassPath:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 959
    const/16 v2, 0x3a

    invoke-static {v8, v2}, Lcom/android/server/pm/PackageManagerService;->splitString(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v24

    .line 960
    .local v24, paths:[Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move-object/from16 v0, v24

    array-length v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v17

    if-ge v0, v2, :cond_7

    .line 962
    :try_start_2
    aget-object v2, v24, v17

    invoke-static {v2}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    aget-object v2, v24, v17

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    aget-object v3, v24, v17

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 965
    const/4 v12, 0x1

    .line 960
    :cond_2
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 227
    .end local v8           #bootClassPath:Ljava/lang/String;
    .end local v9           #d:Landroid/view/Display;
    .end local v10           #dataDir:Ljava/io/File;
    .end local v12           #didDexOpt:Z
    .end local v17           #i:I
    .end local v19           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24           #paths:[Ljava/lang/String;
    .end local v27           #scanMode:I
    .end local v28           #separateProcesses:Ljava/lang/String;
    .end local v29           #startTime:J
    .end local v31           #wm:Landroid/view/WindowManager;
    :cond_3
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto/16 :goto_0

    .line 901
    .restart local v28       #separateProcesses:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 902
    const-string v2, ","

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 903
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running with debug.separate_processes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 907
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 908
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    goto/16 :goto_1

    .line 967
    .restart local v8       #bootClassPath:Ljava/lang/String;
    .restart local v9       #d:Landroid/view/Display;
    .restart local v10       #dataDir:Ljava/io/File;
    .restart local v12       #didDexOpt:Z
    .restart local v17       #i:I
    .restart local v19       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24       #paths:[Ljava/lang/String;
    .restart local v27       #scanMode:I
    .restart local v29       #startTime:J
    .restart local v31       #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v13

    .line 968
    .local v13, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Boot class path not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v24, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1161
    .end local v8           #bootClassPath:Ljava/lang/String;
    .end local v10           #dataDir:Ljava/io/File;
    .end local v12           #didDexOpt:Z
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .end local v17           #i:I
    .end local v19           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24           #paths:[Ljava/lang/String;
    .end local v27           #scanMode:I
    .end local v29           #startTime:J
    :catchall_0
    move-exception v2

    monitor-exit v33
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 1162
    :catchall_1
    move-exception v2

    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 969
    .restart local v8       #bootClassPath:Ljava/lang/String;
    .restart local v10       #dataDir:Ljava/io/File;
    .restart local v12       #didDexOpt:Z
    .restart local v17       #i:I
    .restart local v19       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24       #paths:[Ljava/lang/String;
    .restart local v27       #scanMode:I
    .restart local v29       #startTime:J
    :catch_1
    move-exception v13

    .line 970
    .local v13, e:Ljava/io/IOException;
    :try_start_5
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot dexopt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v24, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; is it an APK or JAR? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 975
    .end local v13           #e:Ljava/io/IOException;
    .end local v17           #i:I
    .end local v24           #paths:[Ljava/lang/String;
    :cond_6
    const-string v2, "PackageManager"

    const-string v3, "No BOOTCLASSPATH found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 983
    .local v21, libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 984
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 986
    .local v18, lib:Ljava/lang/String;
    :try_start_6
    invoke-static/range {v18 .. v18}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 987
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 989
    const/4 v12, 0x1

    goto :goto_4

    .line 991
    :catch_2
    move-exception v13

    .line 992
    .local v13, e:Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Library not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 993
    .end local v13           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v13

    .line 994
    .local v13, e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot dexopt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; is it an APK or JAR? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1002
    .end local v13           #e:Ljava/io/IOException;
    .end local v18           #lib:Ljava/lang/String;
    .end local v21           #libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/framework-res.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

        new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/framework-miui-res.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    .line 1010
    .local v16, frameworkFiles:[Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 1011
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_d

    .line 1012
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    aget-object v3, v16, v17

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1013
    .local v20, libPath:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 1015
    .local v23, path:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1011
    :cond_a
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1019
    :cond_b
    const-string v2, ".apk"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, ".jar"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-eqz v2, :cond_a

    .line 1023
    :cond_c
    :try_start_8
    invoke-static/range {v23 .. v23}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1025
    const/4 v12, 0x1

    goto :goto_6

    .line 1027
    :catch_4
    move-exception v13

    .line 1028
    .local v13, e:Ljava/io/FileNotFoundException;
    :try_start_9
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jar not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1029
    .end local v13           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v13

    .line 1030
    .local v13, e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading jar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1035
    .end local v13           #e:Ljava/io/IOException;
    .end local v17           #i:I
    .end local v20           #libPath:Ljava/io/File;
    .end local v23           #path:Ljava/lang/String;
    :cond_d
    if-eqz v12, :cond_10

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    .line 1042
    .local v14, files:[Ljava/lang/String;
    if-eqz v14, :cond_10

    .line 1043
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_7
    array-length v2, v14

    move/from16 v0, v17

    if-ge v0, v2, :cond_10

    .line 1044
    aget-object v15, v14, v17

    .line 1045
    .local v15, fn:Ljava/lang/String;
    const-string v2, "data@app@"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "data@app-private@"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1047
    :cond_e
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pruning dalvik file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1043
    :cond_f
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1055
    .end local v14           #files:[Ljava/lang/String;
    .end local v15           #fn:Ljava/lang/String;
    .end local v17           #i:I
    :cond_10
    new-instance v2, Lcom/android/server/pm/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    const/16 v4, 0x41

    or-int/lit8 v5, v27, 0x2

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 1063
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "app"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    .line 1064
    new-instance v2, Lcom/android/server/pm/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    const/16 v4, 0x41

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v5, v27

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 1071
    new-instance v2, Ljava/io/File;

    const-string v3, "/vendor/app"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mVendorAppDir:Ljava/io/File;

    .line 1072
    new-instance v2, Lcom/android/server/pm/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mVendorAppDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mVendorInstallObserver:Landroid/os/FileObserver;

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mVendorInstallObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mVendorAppDir:Ljava/io/File;

    const/16 v4, 0x41

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v5, v27

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->moveFiles()I

    .line 1082
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    if-nez v2, :cond_12

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .line 1084
    .local v26, psit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_11
    :goto_8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1085
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PackageSetting;

    .line 1086
    .local v25, ps:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1089
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->remove()V

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer exists; wiping its data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1092
    .local v22, msg:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;I)I

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManager;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManager;->removePackageForAllUsers(Ljava/lang/String;)V

    goto :goto_8

    .line 1099
    .end local v22           #msg:Ljava/lang/String;
    .end local v25           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v26           #psit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_12
    new-instance v2, Ljava/io/File;

    const-string v3, "app"

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getListOfIncompleteInstallPackagesLPr()Ljava/util/ArrayList;

    move-result-object v11

    .line 1103
    .local v11, deletePkgsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_13

    .line 1105
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->cleanupInstallFailedPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1103
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 1108
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->deleteTempPackageFiles()V

    .line 1110
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    if-nez v2, :cond_15

    .line 1111
    const/16 v2, 0xc08

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1113
    new-instance v2, Lcom/android/server/pm/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v5, v27

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 1118
    new-instance v2, Lcom/android/server/pm/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 1121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    const/16 v4, 0x10

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v5, v27

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    .line 1128
    :goto_a
    const/16 v2, 0xc12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1130
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time to scan packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v29

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v2, v2, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    if-eq v2, v3, :cond_16

    const/4 v6, 0x1

    .line 1142
    .local v6, regrantPermissions:Z
    :goto_b
    if-eqz v6, :cond_14

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Platform changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v4, v4, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; regranting permissions for internal storage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    iput v3, v2, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    .line 1147
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v2, p0

    move v7, v6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1152
    const/16 v2, 0xc1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1158
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1160
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->getRequiredVerifierLPr()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 1161
    monitor-exit v33
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1162
    :try_start_a
    monitor-exit v32
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1163
    return-void

    .line 1124
    .end local v6           #regrantPermissions:Z
    :cond_15
    const/4 v2, 0x0

    :try_start_b
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    .line 1125
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_a

    .line 1140
    :cond_16
    const/4 v6, 0x0

    goto :goto_b
.end method

.method static synthetic access$1000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 152
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 152
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/PackageManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2108(Lcom/android/server/pm/PackageManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/PackageManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;ZZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/pm/PackageManagerService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatusInner(ZZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/pm/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static appendInt([II)[I
    .locals 5
    .parameter "cur"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    .line 1435
    if-nez p0, :cond_1

    .line 1436
    const/4 v3, 0x1

    new-array p0, v3, [I

    .end local p0
    aput p1, p0, v4

    .line 1447
    :cond_0
    :goto_0
    return-object p0

    .line 1438
    .restart local p0
    :cond_1
    array-length v0, p0

    .line 1439
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1440
    aget v3, p0, v1

    if-eq v3, p1, :cond_0

    .line 1439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1444
    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .line 1445
    .local v2, ret:[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1446
    aput p1, v2, v0

    move-object p0, v2

    .line 1447
    goto :goto_0
.end method

.method static appendInts([I[I)[I
    .locals 3
    .parameter "cur"
    .parameter "add"

    .prologue
    .line 1451
    if-nez p1, :cond_1

    .line 1457
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1452
    .restart local p0
    :cond_1
    if-nez p0, :cond_2

    move-object p0, p1

    goto :goto_0

    .line 1453
    :cond_2
    array-length v0, p1

    .line 1454
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1455
    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/server/pm/PackageManagerService;->appendInt([II)[I

    move-result-object p0

    .line 1454
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static arrayToString([I)Ljava/lang/String;
    .locals 3
    .parameter "array"

    .prologue
    .line 7746
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 7747
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7748
    if-eqz p0, :cond_1

    .line 7749
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 7750
    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7751
    :cond_0
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 7749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7754
    .end local v1           #i:I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7755
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/pm/BasePermission;
    .locals 4
    .parameter "permName"

    .prologue
    .line 1886
    if-eqz p1, :cond_1

    .line 1887
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/pm/BasePermission;

    move-result-object v0

    .line 1888
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_1

    .line 1889
    iget v1, v0, Lcom/android/server/pm/BasePermission;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1890
    return-object v0

    .line 1892
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to add to permission tree "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owned by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/BasePermission;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1898
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permission tree found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 10
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2133
    if-eqz p4, :cond_4

    .line 2134
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    .line 2135
    .local v6, N:I
    if-ne v6, v0, :cond_0

    .line 2136
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2163
    .end local v6           #N:I
    :goto_0
    return-object v0

    .line 2137
    .restart local v6       #N:I
    :cond_0
    if-le v6, v0, :cond_4

    .line 2140
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 2141
    .local v7, r0:Landroid/content/pm/ResolveInfo;
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2148
    .local v8, r1:Landroid/content/pm/ResolveInfo;
    iget v0, v7, Landroid/content/pm/ResolveInfo;->priority:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v1, :cond_1

    iget v0, v7, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, v8, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_2

    .line 2151
    :cond_1
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 2155
    :cond_2
    iget v5, v7, Landroid/content/pm/ResolveInfo;->priority:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 2157
    .local v9, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_3

    move-object v0, v9

    .line 2158
    goto :goto_0

    .line 2160
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 2163
    .end local v6           #N:I
    .end local v7           #r0:Landroid/content/pm/ResolveInfo;
    .end local v8           #r1:Landroid/content/pm/ResolveInfo;
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static cidFromCodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fullCodePath"

    .prologue
    .line 5979
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 5980
    .local v0, eidx:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5981
    .local v2, subStr1:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 5982
    .local v1, sidx:I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private clearApplicationUserDataLI(Ljava/lang/String;)Z
    .locals 10
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 7221
    if-nez p1, :cond_0

    .line 7222
    const-string v6, "PackageManager"

    const-string v7, "Attempt to delete null packageName."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7258
    :goto_0
    return v5

    .line 7226
    :cond_0
    const/4 v1, 0x0

    .line 7227
    .local v1, dataOnly:Z
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 7228
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 7229
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_3

    .line 7230
    const/4 v1, 0x1

    .line 7231
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 7232
    .local v3, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_1

    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v7, :cond_2

    .line 7233
    :cond_1
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package named \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' doesn\'t exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7234
    monitor-exit v6

    goto :goto_0

    .line 7238
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    .end local v3           #ps:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 7236
    .restart local v2       #p:Landroid/content/pm/PackageParser$Package;
    .restart local v3       #ps:Lcom/android/server/pm/PackageSetting;
    :cond_2
    :try_start_1
    iget-object v2, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 7238
    .end local v3           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7240
    if-nez v1, :cond_5

    .line 7242
    if-nez v2, :cond_4

    .line 7243
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package named \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' doesn\'t exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7246
    :cond_4
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7247
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_5

    .line 7248
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no applicationInfo."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7252
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_5
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v6, p1, v5}, Lcom/android/server/pm/Installer;->clearUserData(Ljava/lang/String;I)I

    move-result v4

    .line 7253
    .local v4, retCode:I
    if-gez v4, :cond_6

    .line 7254
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t remove cache files for package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7258
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z
    .locals 5
    .parameter "pp"
    .parameter "ps"
    .parameter "pkg"
    .parameter "srcFile"
    .parameter "parseFlags"

    .prologue
    const/4 v0, 0x1

    .line 2816
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v1, p4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {p4}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2819
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 2823
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v1, p3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 2837
    :cond_0
    :goto_0
    return v0

    .line 2827
    :cond_1
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageSetting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missing signatures.  Collecting certs again to recover them."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    :goto_1
    invoke-virtual {p1, p3, p5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2833
    invoke-virtual {p1}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 2834
    const/4 v0, 0x0

    goto :goto_0

    .line 2829
    :cond_2
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changed; collecting certs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .parameter "pi1"
    .parameter "pi2"

    .prologue
    const/4 v0, 0x0

    .line 1915
    iget v1, p0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v2, p1, Landroid/content/pm/PermissionInfo;->icon:I

    if-eq v1, v2, :cond_1

    .line 1927
    :cond_0
    :goto_0
    return v0

    .line 1916
    :cond_1
    iget v1, p0, Landroid/content/pm/PermissionInfo;->logo:I

    iget v2, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-ne v1, v2, :cond_0

    .line 1917
    iget v1, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v2, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v1, v2, :cond_0

    .line 1918
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1919
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1921
    iget-object v1, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1927
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 2051
    if-nez p0, :cond_1

    .line 2052
    if-nez p1, :cond_0

    const/4 v6, 0x1

    .line 2071
    :goto_0
    return v6

    .line 2052
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 2056
    :cond_1
    if-nez p1, :cond_2

    .line 2057
    const/4 v6, -0x2

    goto :goto_0

    .line 2059
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2060
    .local v3, set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 2061
    .local v5, sig:Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2060
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2063
    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2064
    .local v4, set2:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 2065
    .restart local v5       #sig:Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2064
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2068
    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2069
    const/4 v6, 0x0

    goto :goto_0

    .line 2071
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method static compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v0, 0x0

    .line 1902
    if-nez p0, :cond_1

    .line 1903
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1911
    :cond_0
    :goto_0
    return v0

    .line 1905
    :cond_1
    if-eqz p1, :cond_0

    .line 1908
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1911
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .locals 5
    .parameter "zipEntry"
    .parameter "inZipFile"
    .parameter "outZipStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6805
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 6809
    .local v0, buffer:[B
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_0

    .line 6811
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 6816
    .local v2, newEntry:Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 6818
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 6819
    .local v1, data:Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, num:I
    if-lez v3, :cond_1

    .line 6820
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 6814
    .end local v1           #data:Ljava/io/InputStream;
    .end local v2           #newEntry:Ljava/util/zip/ZipEntry;
    .end local v3           #num:I
    :cond_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .restart local v2       #newEntry:Ljava/util/zip/ZipEntry;
    goto :goto_0

    .line 6822
    .restart local v1       #data:Ljava/io/InputStream;
    .restart local v3       #num:I
    :cond_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 6823
    return-void
.end method

.method private createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "flags"
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    .line 5693
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->installOnSd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5694
    new-instance v0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5696
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createInstallArgs(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 3
    .parameter "packageURI"
    .parameter "flags"
    .parameter "pkgName"
    .parameter "dataDir"

    .prologue
    .line 5702
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerService;->installOnSd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5703
    const/4 v1, 0x0

    const-string v2, "/pkg.apk"

    invoke-static {v1, p3, v2}, Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5704
    .local v0, cid:Ljava/lang/String;
    new-instance v1, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    .line 5706
    .end local v0           #cid:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "params"

    .prologue
    .line 5684
    iget v0, p1, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->installOnSd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5685
    new-instance v0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    .line 5687
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    goto :goto_0
.end method

.method private createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    .locals 7
    .parameter "installDir"

    .prologue
    const/4 v2, 0x0

    .line 6844
    :try_start_0
    const-string v3, "vmdl"

    const-string v4, ".tmp"

    invoke-static {v3, v4, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6850
    .local v1, tmpPackageFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x180

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6857
    .end local v1           #tmpPackageFile:Ljava/io/File;
    :goto_0
    return-object v1

    .line 6845
    :catch_0
    move-exception v0

    .line 6846
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PackageManager"

    const-string v4, "Couldn\'t create temp file for downloaded package file."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 6847
    goto :goto_0

    .line 6853
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #tmpPackageFile:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 6854
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "PackageManager"

    const-string v4, "Trouble getting the canoncical path for a temp file."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 6855
    goto :goto_0
.end method

.method private deleteApplicationCacheFilesLI(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 7285
    if-nez p1, :cond_0

    .line 7286
    const-string v4, "PackageManager"

    const-string v5, "Attempt to delete null packageName."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7308
    :goto_0
    return v3

    .line 7290
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 7291
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 7292
    .local v1, p:Landroid/content/pm/PackageParser$Package;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7293
    if-nez v1, :cond_1

    .line 7294
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package named \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' doesn\'t exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7292
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 7297
    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7298
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    .line 7299
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no applicationInfo."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7302
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/Installer;->deleteCacheFiles(Ljava/lang/String;)I

    move-result v2

    .line 7303
    .local v2, retCode:I
    if-gez v2, :cond_3

    .line 7304
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t remove cache files for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7308
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z
    .locals 6
    .parameter "p"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "writeSettings"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7110
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7111
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 7112
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no applicationInfo."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7130
    :goto_0
    return v2

    .line 7115
    :cond_0
    if-eqz p4, :cond_1

    .line 7116
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 7120
    :cond_1
    invoke-direct {p0, p1, p4, p3, p5}, Lcom/android/server/pm/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;IZ)V

    .line 7123
    if-eqz p2, :cond_3

    .line 7125
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v1, 0x8

    .line 7126
    .local v1, installFlags:I
    :goto_1
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    or-int/2addr v1, v2

    .line 7127
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/android/server/pm/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v2

    iput-object v2, p4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .end local v1           #installFlags:I
    :cond_3
    move v2, v3

    .line 7130
    goto :goto_0

    :cond_4
    move v1, v2

    .line 7125
    goto :goto_1
.end method

.method private deletePackageLI(Ljava/lang/String;ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z
    .locals 9
    .parameter "packageName"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "writeSettings"

    .prologue
    const/4 v8, 0x0

    .line 7139
    if-nez p1, :cond_0

    .line 7140
    const-string v0, "PackageManager"

    const-string v2, "Attempt to delete null packageName."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7186
    :goto_0
    return v8

    .line 7144
    :cond_0
    const/4 v6, 0x0

    .line 7145
    .local v6, dataOnly:Z
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 7146
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 7147
    .local v1, p:Landroid/content/pm/PackageParser$Package;
    if-nez v1, :cond_2

    .line 7149
    const/4 v6, 0x1

    .line 7150
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 7151
    .local v7, ps:Lcom/android/server/pm/PackageSetting;
    if-nez v7, :cond_1

    .line 7152
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7153
    monitor-exit v2

    goto :goto_0

    .line 7157
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    .end local v7           #ps:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7155
    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    .restart local v7       #ps:Lcom/android/server/pm/PackageSetting;
    :cond_1
    :try_start_1
    iget-object v1, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 7157
    .end local v7           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7158
    if-nez v1, :cond_3

    .line 7159
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' doesn\'t exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7163
    :cond_3
    if-eqz v6, :cond_4

    .line 7165
    invoke-direct {p0, v1, p4, p3, p5}, Lcom/android/server/pm/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;IZ)V

    .line 7166
    const/4 v8, 0x1

    goto :goto_0

    .line 7169
    :cond_4
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_5

    .line 7170
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no applicationInfo."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7173
    :cond_5
    const/4 v8, 0x0

    .line 7174
    .local v8, ret:Z
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7175
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing system package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7178
    invoke-direct {p0, v1, p3, p4, p5}, Lcom/android/server/pm/PackageManagerService;->deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    goto/16 :goto_0

    .line 7180
    :cond_6
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing non-system package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7182
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 7183
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    goto/16 :goto_0
.end method

.method private deletePackageX(Ljava/lang/String;ZZI)I
    .locals 11
    .parameter "packageName"
    .parameter "sendBroadCast"
    .parameter "deleteCodeAndResources"
    .parameter "flags"

    .prologue
    .line 6897
    new-instance v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>()V

    .line 6900
    .local v4, info:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v6

    .line 6903
    .local v6, dpm:Landroid/app/admin/IDevicePolicyManager;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6, p1}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6904
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": has active device admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6905
    const/4 v0, -0x2

    .line 6944
    :goto_0
    return v0

    .line 6907
    :catch_0
    move-exception v0

    .line 6910
    :cond_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v10

    .line 6911
    const/high16 v0, 0x1

    or-int v3, p4, v0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    .line 6913
    .local v8, res:Z
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6915
    if-eqz v8, :cond_1

    if-eqz p2, :cond_1

    .line 6916
    iget-boolean v9, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 6917
    .local v9, systemUpdate:Z
    invoke-virtual {v4, p3, v9}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 6921
    if-eqz v9, :cond_1

    .line 6922
    new-instance v7, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 6923
    .local v7, extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    iget v0, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v0, :cond_3

    iget v0, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :goto_1
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6924
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6926
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v7, v1, v2}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 6928
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v7, v1, v2}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 6930
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 6935
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #systemUpdate:Z
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 6938
    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_2

    .line 6939
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6940
    :try_start_2
    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 6941
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6944
    :cond_2
    if-eqz v8, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 6913
    .end local v8           #res:Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 6923
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v8       #res:Z
    .restart local v9       #systemUpdate:Z
    :cond_3
    iget v0, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_1

    .line 6941
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #systemUpdate:Z
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 6944
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z
    .locals 10
    .parameter "p"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "writeSettings"

    .prologue
    .line 7046
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7048
    .local v6, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_0

    .line 7049
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has no applicationInfo."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7050
    const/4 v0, 0x0

    .line 7104
    :goto_0
    return v0

    .line 7052
    :cond_0
    const/4 v7, 0x0

    .line 7057
    .local v7, ps:Lcom/android/server/pm/PackageSetting;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 7058
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 7059
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7060
    if-nez v7, :cond_1

    .line 7061
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to delete unknown system package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7062
    const/4 v0, 0x0

    goto :goto_0

    .line 7059
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 7064
    :cond_1
    const-string v0, "PackageManager"

    const-string v1, "Deleting system pkg from data partition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7067
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 7068
    iget v0, v7, Lcom/android/server/pm/PackageSetting;->versionCode:I

    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ge v0, v1, :cond_2

    .line 7070
    and-int/lit8 p2, p2, -0x2

    .line 7075
    :goto_1
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    .line 7077
    .local v8, ret:Z
    if-nez v8, :cond_3

    .line 7078
    const/4 v0, 0x0

    goto :goto_0

    .line 7073
    .end local v8           #ret:Z
    :cond_2
    or-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 7081
    .restart local v8       #ret:Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 7083
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 7085
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesLI(Ljava/lang/String;)Z

    .line 7086
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7088
    iget-object v1, v7, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    const/4 v2, 0x5

    const/16 v3, 0x21

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 7092
    .local v2, newPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_4

    .line 7093
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore system package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7094
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 7086
    .end local v2           #newPkg:Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 7097
    .restart local v2       #newPkg:Landroid/content/pm/PackageParser$Package;
    :cond_4
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 7098
    :try_start_4
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 7100
    if-eqz p4, :cond_5

    .line 7101
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 7103
    :cond_5
    monitor-exit v9

    .line 7104
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 7103
    :catchall_2
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private deleteTempPackageFiles()V
    .locals 6

    .prologue
    .line 6826
    new-instance v0, Lcom/android/server/pm/PackageManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$6;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 6831
    .local v0, filter:Ljava/io/FilenameFilter;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 6832
    .local v3, tmpFilesList:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 6839
    :cond_0
    return-void

    .line 6835
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 6836
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    aget-object v5, v3, v1

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6837
    .local v2, tmpFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 6835
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final enforceSystemOrRoot(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 3000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3001
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 3002
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3004
    :cond_0
    return-void
.end method

.method private extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    .locals 10
    .parameter "newPackage"
    .parameter "publicZipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 6766
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6767
    .local v1, fstr:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6768
    .local v4, publicZipOutStream:Ljava/util/zip/ZipOutputStream;
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 6772
    .local v2, privateZip:Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 6773
    .local v3, privateZipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6774
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 6775
    .local v5, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 6776
    .local v6, zipEntryName:Ljava/lang/String;
    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "resources.arsc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "res/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6780
    :cond_1
    :try_start_0
    invoke-static {v5, v2, v4}, Lcom/android/server/pm/PackageManagerService;->copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6781
    :catch_0
    move-exception v0

    .line 6783
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 6784
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6786
    :catchall_0
    move-exception v7

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    throw v7

    .line 6792
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v6           #zipEntryName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 6793
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 6794
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 6795
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 6796
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a4

    invoke-static {v7, v8, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 6800
    return-void
.end method

.method private findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/pm/BasePermission;
    .locals 4
    .parameter "permName"

    .prologue
    .line 1875
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1876
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    iget-object v2, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 1882
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "defProcessName"
    .parameter "processName"
    .parameter "uid"

    .prologue
    .line 2960
    if-nez p1, :cond_0

    .line 2963
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method private generateApplicationInfoFromSettingsLPw(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 1645
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1646
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 1647
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_1

    .line 1648
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfoFromSettingsLPw(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1649
    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 1650
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1656
    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 1654
    :cond_1
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    goto :goto_0
.end method

.method private generatePackageInfoFromSettingsLPw(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 1660
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1661
    .local v0, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 1662
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_0

    .line 1663
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1664
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1665
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1666
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1667
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1668
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getDataPathForPackage(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1670
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 1671
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->enabled:I

    iput v2, v1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    .line 1672
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v2, v0, Lcom/android/server/pm/PackageSetting;->stopped:Z

    iput-boolean v2, v1, Landroid/content/pm/PackageParser$Package;->mSetStopped:Z

    .line 1674
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1676
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static final generatePermissionInfo(Lcom/android/server/pm/BasePermission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .parameter "bp"
    .parameter "flags"

    .prologue
    .line 1578
    iget-object v1, p0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 1586
    :goto_0
    return-object v0

    .line 1581
    :cond_0
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 1582
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1583
    iget-object v1, p0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1584
    iget-object v1, p0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1585
    iget v1, p0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    goto :goto_0
.end method

.method static getApkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "codePath"

    .prologue
    const/4 v2, 0x0

    .line 6263
    if-nez p0, :cond_0

    .line 6274
    :goto_0
    return-object v2

    .line 6266
    :cond_0
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 6267
    .local v1, sidx:I
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 6268
    .local v0, eidx:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 6269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6274
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6270
    :cond_2
    if-nez v0, :cond_1

    .line 6271
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Invalid code path, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Not a valid apk name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final getContinuationPoint([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "keys"
    .parameter "key"

    .prologue
    .line 2535
    if-nez p1, :cond_0

    .line 2536
    const/4 v0, 0x0

    .line 2545
    .local v0, index:I
    :goto_0
    return v0

    .line 2538
    .end local v0           #index:I
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 2539
    .local v1, insertPoint:I
    if-gez v1, :cond_1

    .line 2540
    neg-int v0, v1

    .restart local v0       #index:I
    goto :goto_0

    .line 2542
    .end local v0           #index:I
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .restart local v0       #index:I
    goto :goto_0
.end method

.method private getDataPathForPackage(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .parameter "packageName"
    .parameter "userId"

    .prologue
    .line 3124
    if-nez p2, :cond_0

    .line 3125
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3127
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mUserAppDataDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEncryptKey()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 8054
    :try_start_0
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v4

    const-string v5, "AppsOnSD"

    invoke-virtual {v4, v5}, Landroid/security/SystemKeyStore;->retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8056
    .local v2, sdEncKey:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 8057
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v4

    const/16 v5, 0x80

    const-string v6, "AES"

    const-string v7, "AppsOnSD"

    invoke-virtual {v4, v5, v6, v7}, Landroid/security/SystemKeyStore;->generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8059
    if-nez v2, :cond_0

    .line 8060
    const-string v4, "PackageManager"

    const-string v5, "Failed to create encryption keys"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 8070
    .end local v2           #sdEncKey:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 8065
    :catch_0
    move-exception v1

    .line 8066
    .local v1, nsae:Ljava/security/NoSuchAlgorithmException;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create encryption keys with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 8067
    goto :goto_0

    .line 8068
    .end local v1           #nsae:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 8069
    .local v0, ioe:Ljava/io/IOException;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve encryption keys with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 8070
    goto :goto_0
.end method

.method private static getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "oldCodePath"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    .line 6208
    const-string v1, ""

    .line 6209
    .local v1, idxStr:Ljava/lang/String;
    const/4 v0, 0x1

    .line 6212
    .local v0, idx:I
    if-eqz p0, :cond_2

    .line 6213
    move-object v3, p0

    .line 6215
    .local v3, subStr:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6216
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 6220
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 6221
    .local v2, sidx:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 6222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 6223
    if-eqz v3, :cond_2

    .line 6224
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6225
    const-string v4, "-"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 6228
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 6229
    const/4 v4, 0x1

    if-gt v0, v4, :cond_3

    .line 6230
    add-int/lit8 v0, v0, 0x1

    .line 6239
    .end local v2           #sidx:I
    .end local v3           #subStr:Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 6232
    .restart local v2       #sidx:I
    .restart local v3       #subStr:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6234
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .locals 13
    .parameter "packageName"
    .parameter "pStats"

    .prologue
    const/4 v12, 0x0

    .line 7334
    if-nez p1, :cond_0

    .line 7335
    const-string v0, "PackageManager"

    const-string v1, "Attempt to get size of null packageName."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    .line 7375
    :goto_0
    return v0

    .line 7339
    :cond_0
    const/4 v7, 0x0

    .line 7340
    .local v7, dataOnly:Z
    const/4 v4, 0x0

    .line 7341
    .local v4, asecPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 7342
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Package;

    .line 7343
    .local v8, p:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_3

    .line 7344
    const/4 v7, 0x1

    .line 7345
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 7346
    .local v9, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_1

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_2

    .line 7347
    :cond_1
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package named \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' doesn\'t exist."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7348
    monitor-exit v1

    move v0, v12

    goto :goto_0

    .line 7350
    :cond_2
    iget-object v8, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 7352
    .end local v9           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_3
    if-eqz v8, :cond_4

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7353
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->cidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7354
    .local v11, secureContainerId:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 7355
    invoke-static {v11}, Lcom/android/internal/content/PackageHelper;->getSdFilesystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7358
    .end local v11           #secureContainerId:Ljava/lang/String;
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7359
    const/4 v3, 0x0

    .line 7360
    .local v3, publicSrcDir:Ljava/lang/String;
    if-nez v7, :cond_6

    .line 7361
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7362
    .local v6, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_5

    .line 7363
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no applicationInfo."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    .line 7364
    goto/16 :goto_0

    .line 7358
    .end local v3           #publicSrcDir:Ljava/lang/String;
    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v8           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 7366
    .restart local v3       #publicSrcDir:Ljava/lang/String;
    .restart local v6       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v8       #p:Landroid/content/pm/PackageParser$Package;
    :cond_5
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7367
    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 7370
    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->getSizeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;)I

    move-result v10

    .line 7372
    .local v10, res:I
    if-gez v10, :cond_7

    move v0, v12

    .line 7373
    goto/16 :goto_0

    .line 7375
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private getRequiredVerifierLPr()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1170
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v7, verification:Landroid/content/Intent;
    const-string v8, "application/vnd.android.package-archive"

    const/16 v9, 0x200

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 1174
    .local v5, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 1176
    .local v6, requiredVerifier:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1177
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1178
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1180
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v8, :cond_1

    .line 1177
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1184
    :cond_1
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1186
    .local v3, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1187
    .local v4, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_0

    .line 1191
    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    const-string v9, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1196
    if-eqz v6, :cond_2

    .line 1197
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "There can be only one required verifier"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1200
    :cond_2
    move-object v6, v3

    goto :goto_1

    .line 1203
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_3
    return-object v6
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 2789
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2790
    .local v0, dataDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2791
    .local v2, systemDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "uiderrors.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2792
    .local v1, fname:Ljava/io/File;
    return-object v1
.end method

.method static getTempContainerId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 8076
    const/4 v7, 0x1

    .line 8077
    .local v7, tmpIdx:I
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v4

    .line 8078
    .local v4, list:[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 8079
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 8081
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v8, "smdl2tmp"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 8079
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8085
    :cond_1
    const-string v8, "smdl2tmp"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 8087
    .local v6, subStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 8088
    .local v1, cid:I
    if-lt v1, v7, :cond_0

    .line 8089
    add-int/lit8 v7, v1, 0x1

    goto :goto_1

    .line 8095
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cid:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #subStr:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "smdl2tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 8091
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #subStr:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private getUidForVerifier(Landroid/content/pm/VerifierInfo;)I
    .locals 11
    .parameter "verifierInfo"

    .prologue
    const/4 v6, -0x1

    .line 5015
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 5016
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v9, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 5017
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_0

    .line 5018
    monitor-exit v7

    .line 5048
    :goto_0
    return v6

    .line 5019
    :cond_0
    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 5020
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Verifier package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has more than one signature; ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5022
    monitor-exit v7

    goto :goto_0

    .line 5049
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5033
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1
    :try_start_1
    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v5, v8, v9

    .line 5034
    .local v5, verifierSig:Landroid/content/pm/Signature;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 5035
    .local v4, publicKey:Ljava/security/PublicKey;
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 5040
    .local v2, expectedPublicKey:[B
    :try_start_2
    iget-object v8, p1, Landroid/content/pm/VerifierInfo;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 5042
    .local v0, actualPublicKey:[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5043
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Verifier package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not have the expected public key; ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    monitor-exit v7

    goto :goto_0

    .line 5036
    .end local v0           #actualPublicKey:[B
    .end local v2           #expectedPublicKey:[B
    .end local v4           #publicKey:Ljava/security/PublicKey;
    .end local v5           #verifierSig:Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 5037
    .local v1, e:Ljava/security/cert/CertificateException;
    monitor-exit v7

    goto :goto_0

    .line 5048
    .end local v1           #e:Ljava/security/cert/CertificateException;
    .restart local v0       #actualPublicKey:[B
    .restart local v2       #expectedPublicKey:[B
    .restart local v4       #publicKey:Ljava/security/PublicKey;
    .restart local v5       #verifierSig:Landroid/content/pm/Signature;
    :cond_2
    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private getUidTargetSdkVersionLockedLPr(I)I
    .locals 7
    .parameter "uid"

    .prologue
    .line 7392
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, p1}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v1

    .line 7393
    .local v1, obj:Ljava/lang/Object;
    instance-of v6, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_1

    move-object v3, v1

    .line 7394
    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 7395
    .local v3, sus:Lcom/android/server/pm/SharedUserSetting;
    const/16 v5, 0x2710

    .line 7396
    .local v5, vers:I
    iget-object v6, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7397
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7398
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 7399
    .local v2, ps:Lcom/android/server/pm/PackageSetting;
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_0

    .line 7400
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7401
    .local v4, v:I
    if-ge v4, v5, :cond_0

    move v5, v4

    goto :goto_0

    .line 7405
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v2           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v3           #sus:Lcom/android/server/pm/SharedUserSetting;
    .end local v4           #v:I
    .end local v5           #vers:I
    :cond_1
    instance-of v6, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_3

    move-object v2, v1

    .line 7406
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 7407
    .restart local v2       #ps:Lcom/android/server/pm/PackageSetting;
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_3

    .line 7408
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7411
    .end local v2           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_2
    :goto_1
    return v5

    :cond_3
    const/16 v5, 0x2710

    goto :goto_1
.end method

.method private getVerificationTimeout()J
    .locals 4

    .prologue
    .line 5069
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "verifier_timeout"

    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private grantPermissionsLPw(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 20
    .parameter "pkg"
    .parameter "replace"

    .prologue
    .line 4194
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 4195
    .local v15, ps:Lcom/android/server/pm/PackageSetting;
    if-nez v15, :cond_0

    .line 4339
    :goto_0
    return-void

    .line 4198
    :cond_0
    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v8, v15, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 4199
    .local v8, gp:Lcom/android/server/pm/GrantedPermissions;
    :goto_1
    const/4 v7, 0x0

    .line 4201
    .local v7, changedPermission:Z
    if-eqz p2, :cond_1

    .line 4202
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/android/server/pm/PackageSetting;->permissionsFixed:Z

    .line 4203
    if-ne v8, v15, :cond_1

    .line 4204
    iget-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 4205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 4209
    :cond_1
    iget-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 4210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 4213
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4214
    .local v2, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v2, :cond_18

    .line 4215
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4216
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/BasePermission;

    .line 4222
    .local v6, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v6, :cond_17

    iget-object v0, v6, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 4223
    iget-object v14, v6, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    .line 4225
    .local v14, perm:Ljava/lang/String;
    const/4 v5, 0x0

    .line 4226
    .local v5, allowedSig:Z
    iget v0, v6, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    iget v0, v6, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 4228
    :cond_3
    const/4 v4, 0x1

    .line 4270
    .local v4, allowed:Z
    :cond_4
    :goto_3
    if-eqz v4, :cond_15

    .line 4271
    iget v0, v15, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_5

    iget-boolean v0, v15, Lcom/android/server/pm/PackageSetting;->permissionsFixed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 4275
    if-nez v5, :cond_5

    iget-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 4276
    const/4 v4, 0x0

    .line 4280
    sget-object v17, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    move-object/from16 v0, v17

    array-length v3, v0

    .line 4281
    .local v3, NP:I
    const/4 v10, 0x0

    .local v10, ip:I
    :goto_4
    if-ge v10, v3, :cond_5

    .line 4282
    sget-object v17, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v12, v17, v10

    .line 4284
    .local v12, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v0, v12, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v17, v0

    iget v0, v12, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    .line 4286
    const/4 v4, 0x1

    .line 4287
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Auto-granting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to old pkg "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    .end local v3           #NP:I
    .end local v10           #ip:I
    .end local v12           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_5
    if-eqz v4, :cond_14

    .line 4295
    iget-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 4296
    const/4 v7, 0x1

    .line 4297
    iget-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4298
    iget-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/server/pm/BasePermission;->gids:[I

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 4214
    .end local v4           #allowed:Z
    .end local v5           #allowedSig:Z
    .end local v14           #perm:Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .end local v2           #N:I
    .end local v6           #bp:Lcom/android/server/pm/BasePermission;
    .end local v7           #changedPermission:Z
    .end local v8           #gp:Lcom/android/server/pm/GrantedPermissions;
    .end local v9           #i:I
    .end local v11           #name:Ljava/lang/String;
    :cond_7
    move-object v8, v15

    .line 4198
    goto/16 :goto_1

    .line 4229
    .restart local v2       #N:I
    .restart local v5       #allowedSig:Z
    .restart local v6       #bp:Lcom/android/server/pm/BasePermission;
    .restart local v7       #changedPermission:Z
    .restart local v8       #gp:Lcom/android/server/pm/GrantedPermissions;
    .restart local v9       #i:I
    .restart local v11       #name:Ljava/lang/String;
    .restart local v14       #perm:Ljava/lang/String;
    :cond_8
    iget-object v0, v6, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 4231
    const/4 v4, 0x0

    .restart local v4       #allowed:Z
    goto/16 :goto_3

    .line 4232
    .end local v4           #allowed:Z
    :cond_9
    iget v0, v6, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    iget v0, v6, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 4234
    :cond_a
    iget-object v0, v6, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v17

    if-nez v17, :cond_d

    :cond_b
    const/4 v4, 0x1

    .line 4239
    .restart local v4       #allowed:Z
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lmiui/content/pm/ExtraPackageManager;->isTrustedSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v17

    or-int v4, v4, v17

    if-nez v4, :cond_c

    iget v0, v6, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 4241
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 4244
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isUpdatedSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 4245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v16

    .line 4247
    .local v16, sysPs:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 4249
    .local v13, origGp:Lcom/android/server/pm/GrantedPermissions;
    :goto_7
    iget-object v0, v13, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 4250
    const/4 v4, 0x1

    .line 4259
    .end local v13           #origGp:Lcom/android/server/pm/GrantedPermissions;
    .end local v16           #sysPs:Lcom/android/server/pm/PackageSetting;
    :cond_c
    :goto_8
    if-eqz v4, :cond_4

    .line 4260
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 4234
    .end local v4           #allowed:Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_6

    .restart local v4       #allowed:Z
    .restart local v16       #sysPs:Lcom/android/server/pm/PackageSetting;
    :cond_e
    move-object/from16 v13, v16

    .line 4247
    goto :goto_7

    .line 4252
    .restart local v13       #origGp:Lcom/android/server/pm/GrantedPermissions;
    :cond_f
    const/4 v4, 0x0

    goto :goto_8

    .line 4255
    .end local v13           #origGp:Lcom/android/server/pm/GrantedPermissions;
    .end local v16           #sysPs:Lcom/android/server/pm/PackageSetting;
    :cond_10
    const/4 v4, 0x1

    goto :goto_8

    .line 4263
    .end local v4           #allowed:Z
    :cond_11
    const/4 v4, 0x0

    .restart local v4       #allowed:Z
    goto/16 :goto_3

    .line 4281
    .restart local v3       #NP:I
    .restart local v10       #ip:I
    .restart local v12       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 4299
    .end local v3           #NP:I
    .end local v10           #ip:I
    .end local v12           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_13
    iget-boolean v0, v15, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 4300
    iget-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/server/pm/BasePermission;->gids:[I

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto/16 :goto_5

    .line 4303
    :cond_14
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not granting permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " because it was previously installed without"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4308
    :cond_15
    iget-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 4309
    const/4 v7, 0x1

    .line 4310
    iget-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/server/pm/BasePermission;->gids:[I

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/pm/PackageManagerService;->removeInts([I[I)[I

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 4311
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Un-granting permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " from package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (protectionLevel="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " flags=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4317
    :cond_16
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not granting permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (protectionLevel="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " flags=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4325
    .end local v4           #allowed:Z
    .end local v5           #allowedSig:Z
    .end local v14           #perm:Ljava/lang/String;
    :cond_17
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4330
    .end local v6           #bp:Lcom/android/server/pm/BasePermission;
    .end local v11           #name:Ljava/lang/String;
    :cond_18
    if-nez v7, :cond_19

    if-eqz p2, :cond_1a

    :cond_19
    iget-boolean v0, v15, Lcom/android/server/pm/PackageSetting;->permissionsFixed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1a

    iget v0, v15, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1b

    :cond_1a
    iget v0, v15, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 4336
    :cond_1b
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/android/server/pm/PackageSetting;->permissionsFixed:Z

    .line 4338
    :cond_1c
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    goto/16 :goto_0
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgInfo"
    .parameter "perm"

    .prologue
    .line 4104
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4105
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4106
    const/4 v1, 0x1

    .line 4109
    :goto_1
    return v1

    .line 4104
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4109
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static ignoreCodePath(Ljava/lang/String;)Z
    .locals 5
    .parameter "fullPathStr"

    .prologue
    .line 6246
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6247
    .local v0, apkName:Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 6248
    .local v1, idx:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 6250
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 6252
    .local v2, version:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6253
    const/4 v3, 0x1

    .line 6256
    .end local v2           #version:Ljava/lang/String;
    :goto_0
    return v3

    .line 6254
    .restart local v2       #version:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 6256
    .end local v2           #version:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private installNewPackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 9
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 6293
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 6295
    .local v8, pkgName:Ljava/lang/String;
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDataPathForPackage(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    .line 6296
    .local v6, dataDirExists:Z
    iput-object v8, p5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 6297
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 6298
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6303
    const-string v2, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to re-install "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " without first uninstalling package running as "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6306
    const/4 v0, -0x1

    iput v0, p5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 6307
    monitor-exit v1

    .line 6342
    :cond_0
    :goto_0
    return-void

    .line 6309
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6311
    :cond_2
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to re-install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without first uninstalling."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6313
    const/4 v0, -0x1

    iput v0, p5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 6314
    monitor-exit v1

    goto :goto_0

    .line 6316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6317
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 6318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 6320
    .local v7, newPackage:Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_4

    .line 6321
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package couldn\'t be installed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6322
    iget v0, p0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    iput v0, p5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6323
    const/4 v0, -0x2

    iput v0, p5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_0

    .line 6326
    :cond_4
    invoke-direct {p0, v7, p4, p5}, Lcom/android/server/pm/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 6331
    iget v0, p5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 6336
    const/4 v2, 0x0

    if-eqz v6, :cond_5

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static installOnSd(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .line 822
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_0

    .line 827
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 18
    .parameter "args"
    .parameter "newInstall"
    .parameter "res"

    .prologue
    .line 6601
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    .line 6602
    .local v11, pFlags:I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    .line 6603
    .local v5, installerPackageName:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6604
    .local v17, tmpPackageFile:Ljava/io/File;
    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    .line 6605
    .local v7, forwardLocked:Z
    :goto_0
    and-int/lit8 v1, v11, 0x8

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 6606
    .local v10, onSd:Z
    :goto_1
    const/4 v15, 0x0

    .line 6607
    .local v15, replace:Z
    if-eqz v10, :cond_2

    const/4 v1, 0x0

    :goto_2
    or-int/lit8 v1, v1, 0x4

    or-int/lit8 v6, v1, 0x8

    if-eqz p2, :cond_3

    const/16 v1, 0x10

    :goto_3
    or-int v4, v6, v1

    .line 6610
    .local v4, scanMode:I
    const/4 v1, 0x1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 6613
    if-eqz v7, :cond_4

    const/16 v1, 0x10

    :goto_4
    or-int/lit8 v6, v1, 0x2

    if-eqz v10, :cond_5

    const/16 v1, 0x20

    :goto_5
    or-int v3, v6, v1

    .line 6616
    .local v3, parseFlags:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    or-int/2addr v3, v1

    .line 6617
    new-instance v13, Landroid/content/pm/PackageParser;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 6618
    .local v13, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 6619
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v1, v6, v3}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 6621
    .local v2, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_6

    .line 6622
    invoke-virtual {v13}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 6711
    :goto_6
    return-void

    .line 6604
    .end local v2           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v3           #parseFlags:I
    .end local v4           #scanMode:I
    .end local v7           #forwardLocked:Z
    .end local v10           #onSd:Z
    .end local v13           #pp:Landroid/content/pm/PackageParser;
    .end local v15           #replace:Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 6605
    .restart local v7       #forwardLocked:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 6607
    .restart local v10       #onSd:Z
    .restart local v15       #replace:Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 6613
    .restart local v4       #scanMode:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 6625
    .restart local v2       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v3       #parseFlags:I
    .restart local v13       #pp:Landroid/content/pm/PackageParser;
    :cond_6
    iget-object v12, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 6626
    .local v12, pkgName:Ljava/lang/String;
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    .line 6627
    and-int/lit8 v1, v11, 0x4

    if-nez v1, :cond_7

    .line 6628
    const/16 v1, -0xf

    move-object/from16 v0, p3

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_6

    .line 6632
    :cond_7
    invoke-virtual {v13, v2, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6633
    invoke-virtual {v13}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_6

    .line 6638
    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->manifestDigest:Landroid/content/pm/ManifestDigest;

    if-eqz v1, :cond_9

    .line 6646
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->manifestDigest:Landroid/content/pm/ManifestDigest;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    invoke-virtual {v1, v6}, Landroid/content/pm/ManifestDigest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 6647
    const/16 v1, -0x17

    move-object/from16 v0, p3

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_6

    .line 6657
    :cond_9
    const/4 v13, 0x0

    .line 6658
    const/4 v8, 0x0

    .line 6659
    .local v8, oldCodePath:Ljava/lang/String;
    const/16 v16, 0x0

    .line 6660
    .local v16, systemApp:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 6662
    and-int/lit8 v1, v11, 0x2

    if-eqz v1, :cond_a

    .line 6663
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6664
    .local v9, oldName:Ljava/lang/String;
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6671
    invoke-virtual {v2, v9}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 6672
    iget-object v12, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 6673
    const/4 v15, 0x1

    .line 6680
    .end local v9           #oldName:Ljava/lang/String;
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 6681
    .local v14, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v14, :cond_b

    .line 6682
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 6683
    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_b

    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_b

    .line 6684
    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d

    const/16 v16, 0x1

    .line 6688
    :cond_b
    :goto_8
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6690
    if-eqz v16, :cond_e

    if-eqz v10, :cond_e

    .line 6692
    const-string v1, "PackageManager"

    const-string v6, "Cannot install updates to system apps on sdcard"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6693
    const/16 v1, -0x13

    move-object/from16 v0, p3

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_6

    .line 6674
    .end local v14           #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v9       #oldName:Ljava/lang/String;
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6677
    const/4 v15, 0x1

    goto :goto_7

    .line 6684
    .end local v9           #oldName:Ljava/lang/String;
    .restart local v14       #ps:Lcom/android/server/pm/PackageSetting;
    :cond_d
    const/16 v16, 0x0

    goto :goto_8

    .line 6688
    .end local v14           #ps:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 6697
    .restart local v14       #ps:Lcom/android/server/pm/PackageSetting;
    :cond_e
    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doRename(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 6698
    const/4 v1, -0x4

    move-object/from16 v0, p3

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_6

    .line 6702
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lcom/android/server/pm/PackageManagerService;->setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V

    .line 6703
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 6704
    if-eqz v15, :cond_10

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    .line 6705
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->replacePackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v1, p0

    move-object/from16 v6, p3

    .line 6708
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->installNewPackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    goto/16 :goto_6
.end method

.method private static isExternal(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    .line 6749
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExternalMediaAvailable()Z
    .locals 1

    .prologue
    .line 4763
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mMediaMounted:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    .line 6745
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 4100
    if-eqz p0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 6757
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 6753
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUpdatedSystemApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 6761
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVerificationEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5080
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private killApplication(Ljava/lang/String;I)V
    .locals 2
    .parameter "pkgName"
    .parameter "uid"

    .prologue
    .line 3937
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3938
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 3940
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killApplicationWithUid(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3944
    :cond_0
    :goto_0
    return-void

    .line 3941
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadMediaPackages(Ljava/util/HashMap;[ILjava/util/HashSet;)V
    .locals 21
    .parameter
    .parameter "uidArr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/PackageManagerService$SdInstallArgs;",
            "Ljava/lang/String;",
            ">;[I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8246
    .local p1, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/pm/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    .local p3, removeCids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 8247
    .local v19, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    .line 8248
    .local v17, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$SdInstallArgs;>;"
    const/4 v15, 0x0

    .line 8249
    .local v15, doGc:Z
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;

    .line 8250
    .local v12, args:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 8253
    .local v14, codePath:Ljava/lang/String;
    const/16 v20, -0x12

    .line 8256
    .local v20, retCode:I
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v12, v3}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->doPreInstall(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 8257
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to mount cid : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " when installing from sdcard"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8293
    const/4 v3, 0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_0

    .line 8296
    iget-object v3, v12, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8262
    :cond_1
    if-eqz v14, :cond_2

    :try_start_1
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8263
    :cond_2
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " cachepath "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " does not match one in settings "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8293
    const/4 v3, 0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_0

    .line 8296
    iget-object v3, v12, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    goto :goto_1

    .line 8268
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    or-int/lit8 v5, v3, 0x20

    .line 8269
    .local v5, parseFlags:I
    const/4 v15, 0x1

    .line 8270
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8271
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 8274
    .local v18, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_5

    .line 8281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8282
    const/16 v20, 0x1

    .line 8283
    :try_start_4
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8285
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->doPostInstall(I)I

    .line 8286
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8290
    :goto_2
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 8293
    const/4 v3, 0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_0

    .line 8296
    iget-object v3, v12, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    goto/16 :goto_1

    .line 8286
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3

    .line 8290
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v3

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 8293
    .end local v5           #parseFlags:I
    :catchall_2
    move-exception v3

    const/4 v4, 0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_4

    .line 8296
    iget-object v4, v12, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8293
    :cond_4
    throw v3

    .line 8288
    .restart local v5       #parseFlags:I
    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_5
    :try_start_9
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install pkg from  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " from sdcard"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 8301
    .end local v5           #parseFlags:I
    .end local v12           #args:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    .end local v14           #codePath:Ljava/lang/String;
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v20           #retCode:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 8308
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v3, v3, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    if-eq v3, v6, :cond_a

    const/4 v10, 0x1

    .line 8309
    .local v10, regrantPermissions:Z
    :goto_3
    if-eqz v10, :cond_7

    .line 8310
    const-string v3, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Platform changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v7, v7, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; regranting permissions for external storage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8312
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    iput v6, v3, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    .line 8316
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v6, p0

    move v11, v10

    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 8319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 8320
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 8322
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 8323
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 8326
    :cond_8
    if-eqz v15, :cond_9

    .line 8327
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 8330
    :cond_9
    if-eqz p3, :cond_c

    .line 8331
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 8332
    .local v13, cid:Ljava/lang/String;
    const-string v3, "smdl2tmp"

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 8333
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying stale temporary container "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8334
    invoke-static {v13}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_4

    .line 8308
    .end local v10           #regrantPermissions:Z
    .end local v13           #cid:Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 8320
    :catchall_3
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v3

    .line 8336
    .restart local v10       #regrantPermissions:Z
    .restart local v13       #cid:Ljava/lang/String;
    :cond_b
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is stale"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8340
    .end local v13           #cid:Ljava/lang/String;
    :cond_c
    return-void
.end method

.method public static final main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    .locals 2
    .parameter "context"
    .parameter "factoryTest"
    .parameter "onlyCore"

    .prologue
    .line 834
    new-instance v0, Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;-><init>(Landroid/content/Context;ZZ)V

    .line 835
    .local v0, m:Lcom/android/server/pm/PackageManagerService;
    const-string v1, "package"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 836
    return-object v0
.end method

.method private matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 7
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 4959
    .local p2, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 4961
    .local v3, targetReceiver:Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4962
    .local v0, NR:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4963
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 4964
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_1

    .line 4962
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4968
    :cond_1
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4969
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4974
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez v3, :cond_3

    .line 4975
    const/4 v4, 0x0

    .line 4978
    :goto_1
    return-object v4

    :cond_3
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    .locals 7
    .parameter "pkgInfo"
    .parameter
    .parameter "verificationState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfoLite;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/PackageVerificationState;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4983
    .local p2, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v6, v6

    if-nez v6, :cond_1

    .line 4984
    const/4 v3, 0x0

    .line 5011
    :cond_0
    return-object v3

    .line 4987
    :cond_1
    iget-object v6, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v0, v6

    .line 4988
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4989
    .local v3, sufficientVerifiers:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4990
    iget-object v6, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    aget-object v4, v6, v2

    .line 4992
    .local v4, verifierInfo:Landroid/content/pm/VerifierInfo;
    iget-object v6, v4, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, p2}, Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    .line 4994
    .local v1, comp:Landroid/content/ComponentName;
    if-nez v1, :cond_3

    .line 4989
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4998
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerService;->getUidForVerifier(Landroid/content/pm/VerifierInfo;)I

    move-result v5

    .line 4999
    .local v5, verifierUid:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 5007
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5008
    invoke-virtual {p3, v5}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    goto :goto_1
.end method

.method private moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I
    .locals 4
    .parameter "newPackage"

    .prologue
    .line 6543
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 6544
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/Installer;->movedex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6545
    .local v0, retCode:I
    if-eqz v0, :cond_0

    .line 6546
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mNoDexOpt:Z

    if-eqz v1, :cond_1

    .line 6552
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dex file doesn\'t exist, skipping move: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6559
    .end local v0           #retCode:I
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 6554
    .restart local v0       #retCode:I
    :cond_1
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t rename dex file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6555
    const/4 v1, -0x4

    goto :goto_0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;ZZ)I
    .locals 9
    .parameter "pkg"
    .parameter "forceDex"
    .parameter "defer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3060
    const/4 v2, 0x0

    .line 3061
    .local v2, performed:Z
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    .line 3062
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 3063
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3065
    .local v3, ret:I
    if-nez p2, :cond_0

    :try_start_0
    invoke-static {v1}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3066
    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 3067
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mDeferredDexOpt:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3068
    const/4 v4, 0x2

    .line 3096
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :cond_1
    :goto_0
    return v4

    .line 3070
    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #ret:I
    :cond_2
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running dexopt on: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v4

    :goto_1
    invoke-virtual {v7, v1, v8, v6}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZ)I

    move-result v3

    .line 3073
    const/4 v6, 0x1

    iput-boolean v6, p1, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ldalvik/system/StaleDexCacheError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3074
    const/4 v2, 0x1

    .line 3090
    :cond_3
    :goto_2
    if-gez v3, :cond_5

    .line 3092
    const/4 v4, -0x1

    goto :goto_0

    :cond_4
    move v6, v5

    .line 3071
    goto :goto_1

    .line 3077
    :catch_0
    move-exception v0

    .line 3078
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Apk not found for dexopt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    const/4 v3, -0x1

    .line 3089
    goto :goto_2

    .line 3080
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 3081
    .local v0, e:Ljava/io/IOException;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException reading apk: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3082
    const/4 v3, -0x1

    .line 3089
    goto :goto_2

    .line 3083
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 3084
    .local v0, e:Ldalvik/system/StaleDexCacheError;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StaleDexCacheError when reading apk: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3085
    const/4 v3, -0x1

    .line 3089
    goto :goto_2

    .line 3086
    .end local v0           #e:Ldalvik/system/StaleDexCacheError;
    :catch_3
    move-exception v0

    .line 3087
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PackageManager"

    const-string v7, "Exception when doing dexopt : "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3088
    const/4 v3, -0x1

    goto :goto_2

    .line 3096
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :cond_5
    if-nez v2, :cond_1

    move v4, v5

    goto/16 :goto_0
.end method

.method private processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .locals 2
    .parameter "args"
    .parameter "currentStatus"

    .prologue
    .line 5157
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/pm/PackageManagerService$5;-><init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5226
    return-void
.end method

.method private processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
    .locals 2
    .parameter "mp"
    .parameter "currentStatus"

    .prologue
    .line 8481
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/pm/PackageManagerService$13;-><init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$MoveParams;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 8628
    return-void
.end method

.method private readPermissionsFromXml(Ljava/io/File;)V
    .locals 20
    .parameter "permFile"

    .prologue
    .line 1279
    const/4 v12, 0x0

    .line 1281
    .local v12, permReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v13, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    .end local v12           #permReader:Ljava/io/FileReader;
    .local v13, permReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 1289
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1291
    const-string v17, "permissions"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1294
    :goto_0
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1295
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1391
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    move-object v12, v13

    .line 1397
    .end local v13           #permReader:Ljava/io/FileReader;
    .restart local v12       #permReader:Ljava/io/FileReader;
    :goto_2
    return-void

    .line 1282
    :catch_0
    move-exception v2

    .line 1283
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1299
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v12           #permReader:Ljava/io/FileReader;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #permReader:Ljava/io/FileReader;
    :cond_0
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1300
    .local v9, name:Ljava/lang/String;
    const-string v17, "group"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1301
    const/16 v17, 0x0

    const-string v18, "gid"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1302
    .local v6, gidStr:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1303
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1304
    .local v5, gid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->appendInt([II)[I

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mGlobalGids:[I

    .line 1310
    .end local v5           #gid:I
    :goto_3
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1392
    .end local v6           #gidStr:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v2

    .line 1393
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v17, "PackageManager"

    const-string v18, "Got execption parsing permissions."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1306
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #gidStr:Ljava/lang/String;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_3
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<group> without gid at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1394
    .end local v6           #gidStr:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 1395
    .local v2, e:Ljava/io/IOException;
    const-string v17, "PackageManager"

    const-string v18, "Got execption parsing permissions."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1312
    .end local v2           #e:Ljava/io/IOException;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_4
    const-string v17, "permission"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1313
    const/16 v17, 0x0

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1314
    .local v11, perm:Ljava/lang/String;
    if-nez v11, :cond_3

    .line 1315
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<permission> without name at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1320
    :cond_3
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 1321
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/pm/PackageManagerService;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1323
    .end local v11           #perm:Ljava/lang/String;
    :cond_4
    const-string v17, "assign-permission"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1324
    const/16 v17, 0x0

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1325
    .restart local v11       #perm:Ljava/lang/String;
    if-nez v11, :cond_5

    .line 1326
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<assign-permission> without name at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1331
    :cond_5
    const/16 v17, 0x0

    const-string v18, "uid"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1332
    .local v16, uidStr:Ljava/lang/String;
    if-nez v16, :cond_6

    .line 1333
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<assign-permission> without uid at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1338
    :cond_6
    invoke-static/range {v16 .. v16}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v15

    .line 1339
    .local v15, uid:I
    if-gez v15, :cond_7

    .line 1340
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\" at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1346
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    .line 1348
    .local v14, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v14, :cond_8

    .line 1349
    new-instance v14, Ljava/util/HashSet;

    .end local v14           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1350
    .restart local v14       #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1352
    :cond_8
    invoke-virtual {v14, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1353
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1355
    .end local v11           #perm:Ljava/lang/String;
    .end local v14           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #uid:I
    .end local v16           #uidStr:Ljava/lang/String;
    :cond_9
    const-string v17, "library"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1356
    const/16 v17, 0x0

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1357
    .local v8, lname:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1358
    .local v7, lfile:Ljava/lang/String;
    if-nez v8, :cond_a

    .line 1359
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<library> without name at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :goto_4
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1361
    :cond_a
    if-nez v7, :cond_b

    .line 1362
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<library> without file at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1366
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1371
    .end local v7           #lfile:Ljava/lang/String;
    .end local v8           #lname:Ljava/lang/String;
    :cond_c
    const-string v17, "feature"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1372
    const/16 v17, 0x0

    const-string v18, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1373
    .local v4, fname:Ljava/lang/String;
    if-nez v4, :cond_d

    .line 1374
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<feature> without name at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :goto_5
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1378
    :cond_d
    new-instance v3, Landroid/content/pm/FeatureInfo;

    invoke-direct {v3}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1379
    .local v3, fi:Landroid/content/pm/FeatureInfo;
    iput-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1386
    .end local v3           #fi:Landroid/content/pm/FeatureInfo;
    .end local v4           #fname:Ljava/lang/String;
    :cond_e
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method static removeInt([II)[I
    .locals 5
    .parameter "cur"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    .line 1461
    if-nez p0, :cond_1

    .line 1462
    const/4 v2, 0x0

    .line 1477
    :cond_0
    :goto_0
    return-object v2

    .line 1464
    :cond_1
    array-length v0, p0

    .line 1465
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1466
    aget v3, p0, v1

    if-ne v3, p1, :cond_3

    .line 1467
    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [I

    .line 1468
    .local v2, ret:[I
    if-lez v1, :cond_2

    .line 1469
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    .line 1472
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1465
    .end local v2           #ret:[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, p0

    .line 1477
    goto :goto_0
.end method

.method static removeInts([I[I)[I
    .locals 3
    .parameter "cur"
    .parameter "rem"

    .prologue
    .line 1481
    if-nez p1, :cond_1

    .line 1487
    :cond_0
    return-object p0

    .line 1482
    :cond_1
    if-eqz p0, :cond_0

    .line 1483
    array-length v0, p1

    .line 1484
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1485
    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/server/pm/PackageManagerService;->removeInt([II)[I

    move-result-object p0

    .line 1484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;IZ)V
    .locals 13
    .parameter "p"
    .parameter "outInfo"
    .parameter "flags"
    .parameter "writeSettings"

    .prologue
    .line 6984
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 6985
    .local v9, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 6986
    iput-object v9, p2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 6988
    :cond_0
    const/high16 v0, 0x1

    and-int v0, v0, p3

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 6992
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 6993
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 6994
    .local v6, deletedPs:Lcom/android/server/pm/PackageSetting;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6995
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    .line 6996
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;I)I

    move-result v11

    .line 6997
    .local v11, retCode:I
    if-gez v11, :cond_6

    .line 6998
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t remove app data or cache directory for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7005
    :goto_1
    invoke-virtual {p0, v9}, Lcom/android/server/pm/PackageManagerService;->schedulePackageCleaning(Ljava/lang/String;)V

    .line 7008
    .end local v11           #retCode:I
    :cond_1
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v12

    .line 7009
    if-eqz v6, :cond_8

    .line 7010
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_3

    .line 7011
    if-eqz p2, :cond_2

    .line 7012
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/Settings;->removePackageLPw(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 7014
    :cond_2
    if-eqz v6, :cond_3

    .line 7015
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 7016
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_3

    .line 7018
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mGlobalGids:[I

    invoke-virtual {v0, v6, v1}, Lcom/android/server/pm/Settings;->updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;[I)V

    .line 7023
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7024
    .local v10, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PreferredActivity;

    .line 7025
    .local v8, pa:Lcom/android/server/pm/PreferredActivity;
    iget-object v0, v8, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7026
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7038
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #pa:Lcom/android/server/pm/PreferredActivity;
    .end local v10           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6988
    .end local v6           #deletedPs:Lcom/android/server/pm/PackageSetting;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 6994
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 7003
    .restart local v6       #deletedPs:Lcom/android/server/pm/PackageSetting;
    .restart local v11       #retCode:I
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManager;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManager;->removePackageForAllUsers(Ljava/lang/String;)V

    goto :goto_1

    .line 7029
    .end local v11           #retCode:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_7
    :try_start_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PreferredActivity;

    .line 7030
    .restart local v8       #pa:Lcom/android/server/pm/PreferredActivity;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v0, v8}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    goto :goto_3

    .line 7034
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #pa:Lcom/android/server/pm/PreferredActivity;
    .end local v10           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_8
    if-eqz p4, :cond_9

    .line 7036
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 7038
    :cond_9
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7039
    return-void
.end method

.method private replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 22
    .parameter "deletedPackage"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 6372
    const/16 v17, 0x0

    .line 6373
    .local v17, newPackage:Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 6374
    .local v5, pkgName:Ljava/lang/String;
    const/16 v16, 0x1

    .line 6375
    .local v16, deletedPkg:Z
    const/16 v21, 0x0

    .line 6378
    .local v21, updatedSettings:Z
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 6379
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget-wide v0, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    move-wide/from16 v19, v0

    .line 6385
    .local v19, origUpdateTime:J
    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6388
    const/16 v4, -0xa

    move-object/from16 v0, p6

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 6389
    const/16 v16, 0x0

    .line 6408
    :cond_0
    :goto_1
    move-object/from16 v0, p6

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 6413
    if-eqz v21, :cond_1

    .line 6414
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z

    .line 6421
    :cond_1
    if-eqz v16, :cond_2

    .line 6422
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6423
    .local v7, restoreFile:Ljava/io/File;
    if-nez v7, :cond_6

    .line 6424
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed allocating storage when restoring pkg : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6450
    .end local v7           #restoreFile:Ljava/io/File;
    :cond_2
    :goto_2
    return-void

    .line 6381
    .end local v19           #origUpdateTime:J
    :cond_3
    const-wide/16 v19, 0x0

    .restart local v19       #origUpdateTime:J
    goto :goto_0

    .line 6392
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 6393
    or-int/lit8 v9, p4, 0x40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 6395
    if-nez v17, :cond_5

    .line 6396
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package couldn\'t be installed in "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6397
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    move-object/from16 v0, p6

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 6398
    const/4 v4, -0x2

    move-object/from16 v0, p6

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_1

    .line 6401
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 6404
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 6428
    .restart local v7       #restoreFile:Ljava/io/File;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v18

    .line 6429
    .local v18, oldOnSd:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    or-int/lit8 v6, v4, 0x2

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x10

    :goto_3
    or-int/2addr v6, v4

    if-eqz v18, :cond_8

    const/16 v4, 0x20

    :goto_4
    or-int v8, v6, v4

    .line 6432
    .local v8, oldParseFlags:I
    if-eqz v18, :cond_9

    const/4 v4, 0x0

    :goto_5
    or-int/lit8 v4, v4, 0x8

    or-int/lit8 v9, v4, 0x40

    .local v9, oldScanMode:I
    move-object/from16 v6, p0

    move-wide/from16 v10, v19

    .line 6434
    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    if-nez v4, :cond_a

    .line 6436
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to restore package : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " after failed upgrade"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 6429
    .end local v8           #oldParseFlags:I
    .end local v9           #oldScanMode:I
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 6432
    .restart local v8       #oldParseFlags:I
    :cond_9
    const/4 v4, 0x1

    goto :goto_5

    .line 6441
    .restart local v9       #oldScanMode:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 6442
    :try_start_0
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-direct/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 6445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 6446
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6447
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully restored package : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " after failed upgrade"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 6446
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private replacePackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 9
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 6350
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 6352
    .local v7, pkgName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 6353
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 6354
    .local v1, oldPackage:Landroid/content/pm/PackageParser$Package;
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6356
    const/16 v0, -0x68

    iput v0, p5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 6357
    monitor-exit v2

    .line 6366
    :goto_0
    return-void

    .line 6359
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6360
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    .line 6361
    .local v8, sysPkg:Z
    if-eqz v8, :cond_1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 6362
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_0

    .line 6359
    .end local v1           #oldPackage:Landroid/content/pm/PackageParser$Package;
    .end local v8           #sysPkg:Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .restart local v1       #oldPackage:Landroid/content/pm/PackageParser$Package;
    .restart local v8       #sysPkg:Z
    :cond_1
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 6364
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_0
.end method

.method private replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 14
    .parameter "deletedPackage"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 6456
    const/4 v8, 0x0

    .line 6457
    .local v8, newPackage:Landroid/content/pm/PackageParser$Package;
    const/4 v13, 0x0

    .line 6458
    .local v13, updatedSettings:Z
    or-int/lit8 p3, p3, 0x3

    .line 6460
    iget-object v12, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 6461
    .local v12, packageName:Ljava/lang/String;
    const/16 v2, -0xa

    move-object/from16 v0, p6

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 6462
    if-nez v12, :cond_1

    .line 6463
    const-string v2, "PackageManager"

    const-string v3, "Attempt to delete null packageName."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6538
    :cond_0
    :goto_0
    return-void

    .line 6469
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 6470
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Package;

    .line 6471
    .local v10, oldPkg:Landroid/content/pm/PackageParser$Package;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 6472
    .local v11, oldPkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v10, :cond_2

    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    if-nez v11, :cond_3

    .line 6474
    :cond_2
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " information"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6475
    monitor-exit v3

    goto :goto_0

    .line 6477
    .end local v10           #oldPkg:Landroid/content/pm/PackageParser$Package;
    .end local v11           #oldPkgSetting:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v10       #oldPkg:Landroid/content/pm/PackageParser$Package;
    .restart local v11       #oldPkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6479
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v12, v2}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    .line 6481
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 6482
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iput-object v12, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 6484
    const/4 v2, 0x1

    invoke-virtual {p0, v10, v2}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 6486
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 6487
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v12}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p1, :cond_8

    .line 6491
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    :goto_1
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v2

    iput-object v2, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 6499
    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6502
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 6503
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6504
    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 6505
    if-nez v8, :cond_9

    .line 6506
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package couldn\'t be installed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6507
    iget v2, p0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    move-object/from16 v0, p6

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 6508
    const/4 v2, -0x2

    move-object/from16 v0, p6

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 6520
    :cond_4
    :goto_3
    move-object/from16 v0, p6

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 6523
    if-eqz v8, :cond_5

    .line 6524
    const/4 v2, 0x1

    invoke-virtual {p0, v8, v2}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 6527
    :cond_5
    const/16 v5, 0x9

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v10

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    .line 6529
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 6530
    if-eqz v13, :cond_6

    .line 6531
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v12}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 6532
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v12, v4}, Lcom/android/server/pm/Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 6535
    :cond_6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 6536
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 6491
    :cond_7
    const/16 v2, 0x10

    goto/16 :goto_1

    .line 6497
    :cond_8
    :try_start_4
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    goto/16 :goto_2

    .line 6499
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 6511
    :cond_9
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 6512
    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 6513
    .local v9, newPkgSetting:Lcom/android/server/pm/PackageSetting;
    iget-wide v2, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    iput-wide v2, v9, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 6514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 6516
    .end local v9           #newPkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_a
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v8, v0, v1}, Lcom/android/server/pm/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 6517
    const/4 v13, 0x1

    goto :goto_3
.end method

.method static reportSettingsProblem(ILjava/lang/String;)V
    .locals 9
    .parameter "priority"
    .parameter "msg"

    .prologue
    .line 2797
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v1

    .line 2798
    .local v1, fname:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2799
    .local v3, out:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2800
    .local v4, pw:Ljava/io/PrintWriter;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 2801
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2802
    .local v0, dateString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 2804
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2810
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #fname:Ljava/io/File;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v4           #pw:Ljava/io/PrintWriter;
    :goto_0
    const-string v5, "PackageManager"

    invoke-static {p0, v5, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 2811
    return-void

    .line 2808
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private scanDirLI(Ljava/io/File;IIJ)V
    .locals 9
    .parameter "dir"
    .parameter "flags"
    .parameter "scanMode"
    .parameter "currentTime"

    .prologue
    .line 2759
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 2760
    .local v6, files:[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 2761
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No files in app dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    :cond_0
    return-void

    .line 2770
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_0

    .line 2771
    new-instance v1, Ljava/io/File;

    aget-object v0, v6, v7

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2772
    .local v1, file:Ljava/io/File;
    aget-object v0, v6, v7

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2770
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2776
    :cond_3
    or-int/lit8 v2, p2, 0x4

    move-object v0, p0

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 2779
    .local v8, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 2782
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up failed install of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;
    .locals 53
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "currentTime"

    .prologue
    .line 3134
    new-instance v47, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3135
    .local v47, scanFile:Ljava/io/File;
    if-eqz v47, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 3138
    :cond_0
    const-string v3, "PackageManager"

    const-string v4, " Code and resource paths haven\'t been set correctly"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    const/4 v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3140
    const/16 p1, 0x0

    .line 3930
    .end local p1
    :goto_0
    return-object p1

    .line 3142
    .restart local p1
    :cond_1
    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mScanningPath:Ljava/io/File;

    .line 3144
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    .line 3145
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3148
    :cond_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 3150
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 3151
    const-string v3, "PackageManager"

    const-string v10, "*************************************************"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    const-string v3, "PackageManager"

    const-string v10, "Core android package being redefined.  Skipping."

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    const-string v3, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " file="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mScanningPath:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    const-string v3, "PackageManager"

    const-string v10, "*************************************************"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    const/4 v3, -0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3156
    const/16 p1, 0x0

    monitor-exit v4

    goto :goto_0

    .line 3179
    .end local p1
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3161
    .restart local p1
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    .line 3162
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 3163
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 3164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v10, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const-class v10, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v10, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v10, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v10, 0x0

    iput v10, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x20

    iput v10, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const v10, 0x60d0020

    iput v10, v3, Landroid/content/pm/ActivityInfo;->theme:I

    .line 3171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 3173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v10, 0x0

    iput v10, v3, Landroid/content/pm/ResolveInfo;->priority:I

    .line 3175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v10, 0x0

    iput v10, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 3176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v10, 0x0

    iput v10, v3, Landroid/content/pm/ResolveInfo;->match:I

    .line 3177
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 3179
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3187
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3189
    :cond_5
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Application package "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " already installed.  Skipping duplicate."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    const/4 v3, -0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3192
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 3196
    :cond_6
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3197
    .local v8, destCodeFile:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3199
    .local v9, destResourceFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 3200
    .local v7, suid:Lcom/android/server/pm/SharedUserSetting;
    const/16 v41, 0x0

    .line 3202
    .local v41, pkgSetting:Lcom/android/server/pm/PackageSetting;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3204
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 3205
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 3206
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 3210
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v52, v0

    monitor-enter v52

    .line 3212
    :try_start_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v3, :cond_11

    .line 3213
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    array-length v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 3215
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    .line 3217
    :cond_a
    const/16 v31, 0x0

    .line 3218
    .local v31, num:I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3219
    .local v14, N:I
    :goto_1
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v14, :cond_d

    .line 3220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 3221
    .local v21, file:Ljava/lang/String;
    if-nez v21, :cond_c

    .line 3222
    const-string v4, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " requires unavailable shared library "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "; failing!"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    const/16 v3, -0x9

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3226
    const/16 p1, 0x0

    monitor-exit v52

    goto/16 :goto_0

    .line 3431
    .end local v14           #N:I
    .end local v21           #file:Ljava/lang/String;
    .end local v23           #i:I
    .end local v31           #num:I
    .end local p1
    :catchall_1
    move-exception v3

    monitor-exit v52
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 3218
    .restart local v31       #num:I
    .restart local p1
    :cond_b
    const/4 v14, 0x0

    goto :goto_1

    .line 3228
    .restart local v14       #N:I
    .restart local v21       #file:Ljava/lang/String;
    .restart local v23       #i:I
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    aput-object v21, v3, v31

    .line 3229
    add-int/lit8 v31, v31, 0x1

    .line 3219
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 3231
    .end local v21           #file:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3232
    :goto_3
    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    if-ge v0, v14, :cond_10

    .line 3233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 3234
    .restart local v21       #file:Ljava/lang/String;
    if-nez v21, :cond_f

    .line 3235
    const-string v4, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " desires unavailable shared library "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "; ignoring!"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 3231
    .end local v21           #file:Ljava/lang/String;
    :cond_e
    const/4 v14, 0x0

    goto :goto_3

    .line 3239
    .restart local v21       #file:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    aput-object v21, v3, v31

    .line 3240
    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    .line 3243
    .end local v21           #file:Ljava/lang/String;
    :cond_10
    if-lez v31, :cond_11

    .line 3244
    move/from16 v0, v31

    new-array v3, v0, [Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 3245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    const/4 v11, 0x0

    move/from16 v0, v31

    invoke-static {v3, v4, v10, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3250
    .end local v14           #N:I
    .end local v23           #i:I
    .end local v31           #num:I
    :cond_11
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 3251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x1

    invoke-virtual {v3, v4, v10, v11}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    .line 3253
    if-nez v7, :cond_12

    .line 3254
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Creating application package "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " for shared user failed"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    const/4 v3, -0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3257
    const/16 p1, 0x0

    monitor-exit v52

    goto/16 :goto_0

    .line 3267
    :cond_12
    const/4 v5, 0x0

    .line 3268
    .local v5, origPackage:Lcom/android/server/pm/PackageSetting;
    const/4 v6, 0x0

    .line 3269
    .local v6, realName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    .line 3272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 3273
    .local v44, renamed:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3278
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 3279
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 3283
    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 3316
    .end local v44           #renamed:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3317
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " was transferred to another, but its .apk remains"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/pm/Settings;->getPackageLPw(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v41

    .line 3326
    if-nez v41, :cond_18

    .line 3327
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Creating application package "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " failed"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    const/4 v3, -0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3329
    const/16 p1, 0x0

    monitor-exit v52

    goto/16 :goto_0

    .line 3287
    .restart local v44       #renamed:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    .restart local v23       #i:I
    :goto_6
    if-ltz v23, :cond_13

    .line 3288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 3292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerService;->verifyPackageUpdateLPr(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3294
    const/4 v5, 0x0

    .line 3287
    :cond_16
    :goto_7
    add-int/lit8 v23, v23, -0x1

    goto :goto_6

    .line 3296
    :cond_17
    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_13

    .line 3298
    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 3299
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to migrate data from "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " to "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ": old uid "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v5, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " differs from "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    const/4 v5, 0x0

    goto :goto_7

    .line 3332
    .end local v23           #i:I
    .end local v44           #renamed:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, v41

    iget v10, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const/high16 v11, -0x8000

    and-int/2addr v10, v11

    or-int/2addr v4, v10

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3335
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    if-eqz v3, :cond_19

    .line 3337
    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 3340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " renamed to replace old package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3342
    .local v27, msg:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    iget-object v4, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3348
    const/4 v3, 0x0

    move-object/from16 v0, v41

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 3351
    .end local v27           #msg:Ljava/lang/String;
    :cond_19
    if-eqz v6, :cond_1a

    .line 3353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3356
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 3357
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3360
    :cond_1b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v41

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3361
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    .line 3363
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->verifySignaturesLP(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3364
    and-int/lit8 v3, p2, 0x40

    if-nez v3, :cond_1c

    .line 3365
    const/16 p1, 0x0

    monitor-exit v52

    goto/16 :goto_0

    .line 3369
    :cond_1c
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v4, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 3375
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_1d

    .line 3376
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    if-eqz v3, :cond_1d

    .line 3378
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature mismatch for shared user : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    const/16 v3, -0x68

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3380
    const/16 p1, 0x0

    monitor-exit v52

    goto/16 :goto_0

    .line 3384
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " signature changed; retaining data."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3386
    .restart local v27       #msg:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3393
    .end local v27           #msg:Ljava/lang/String;
    :cond_1e
    and-int/lit8 v3, p3, 0x10

    if-eqz v3, :cond_22

    .line 3394
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3396
    .restart local v14       #N:I
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_8
    move/from16 v0, v23

    if-ge v0, v14, :cond_22

    .line 3397
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/PackageParser$Provider;

    .line 3398
    .local v35, p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v3, :cond_21

    .line 3399
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 3400
    .local v28, names:[Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, j:I
    :goto_9
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v26

    if-ge v0, v3, :cond_21

    .line 3401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    aget-object v4, v28, v26

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    aget-object v4, v28, v26

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/PackageParser$Provider;

    .line 3403
    .local v34, other:Landroid/content/pm/PackageParser$Provider;
    const-string v4, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t install because provider name "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v10, v28, v26

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " (in package "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ") is already used by "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v34, :cond_1f

    invoke-virtual/range {v34 .. v34}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual/range {v34 .. v34}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_a
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    const/16 v3, -0xd

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3409
    const/16 p1, 0x0

    monitor-exit v52

    goto/16 :goto_0

    .line 3403
    :cond_1f
    const-string v3, "?"

    goto :goto_a

    .line 3400
    .end local v34           #other:Landroid/content/pm/PackageParser$Provider;
    :cond_20
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 3396
    .end local v26           #j:I
    .end local v28           #names:[Ljava/lang/String;
    :cond_21
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_8

    .line 3416
    .end local v14           #N:I
    .end local v23           #i:I
    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_22
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-eqz v3, :cond_24

    .line 3419
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    .restart local v23       #i:I
    :goto_b
    if-ltz v23, :cond_24

    .line 3420
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 3421
    .local v33, origName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v32

    .line 3422
    .local v32, orig:Lcom/android/server/pm/PackageSetting;
    if-eqz v32, :cond_23

    .line 3423
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->verifyPackageUpdateLPr(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 3424
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adopting permissions from "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " to "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/Settings;->transferPermissionsLPw(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    :cond_23
    add-int/lit8 v23, v23, -0x1

    goto :goto_b

    .line 3431
    .end local v23           #i:I
    .end local v32           #orig:Lcom/android/server/pm/PackageSetting;
    .end local v33           #origName:Ljava/lang/String;
    :cond_24
    monitor-exit v52
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3433
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 3435
    .local v40, pkgName:Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->lastModified()J

    move-result-wide v48

    .line 3436
    .local v48, scanFileTime:J
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_26

    const/16 v22, 0x1

    .line 3437
    .local v22, forceDex:Z
    :goto_c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v10, v11}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_27

    .line 3445
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "system"

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3446
    .local v18, dataPath:Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3562
    :goto_d
    invoke-virtual/range {v47 .. v47}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v37

    .line 3573
    .local v37, path:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 3575
    :try_start_4
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3576
    .local v29, nativeLibraryDir:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v19

    .line 3578
    .local v19, dataPathString:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isUpdatedSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 3586
    invoke-static/range {v29 .. v29}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3587
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removed obsolete native libraries for system package "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3623
    .end local v19           #dataPathString:Ljava/lang/String;
    .end local v29           #nativeLibraryDir:Ljava/io/File;
    :cond_25
    :goto_e
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 3625
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_36

    .line 3626
    move/from16 v0, p3

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;ZZ)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_36

    .line 3628
    const/16 v3, -0xb

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3629
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 3436
    .end local v18           #dataPath:Ljava/io/File;
    .end local v22           #forceDex:Z
    .end local v37           #path:Ljava/lang/String;
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_c

    .line 3449
    .restart local v22       #forceDex:Z
    :cond_27
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getDataPathForPackage(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v18

    .line 3451
    .restart local v18       #dataPath:Ljava/io/File;
    const/16 v51, 0x0

    .line 3453
    .local v51, uidError:Z
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mOutPermissions:[I

    const/4 v4, 0x1

    const/4 v10, 0x0

    aput v10, v3, v4

    .line 3455
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mOutPermissions:[I

    invoke-static {v3, v4}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 3458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mOutPermissions:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v4, :cond_2c

    .line 3459
    const/16 v43, 0x0

    .line 3460
    .local v43, recovered:Z
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2a

    .line 3463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;I)I

    move-result v45

    .line 3464
    .local v45, ret:I
    if-ltz v45, :cond_29

    .line 3467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManager;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/server/pm/UserManager;->removePackageForAllUsers(Ljava/lang/String;)V

    .line 3469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has changed from uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mOutPermissions:[I

    const/4 v10, 0x1

    aget v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; old data erased"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3473
    .restart local v27       #msg:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3474
    const/16 v43, 0x1

    .line 3477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v40

    invoke-virtual {v3, v0, v4, v10}, Lcom/android/server/pm/Installer;->install(Ljava/lang/String;II)I

    move-result v45

    .line 3479
    const/4 v3, -0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_28

    .line 3481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not have data directory re-created after delete."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3483
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3484
    const/4 v3, -0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3485
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 3488
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManager;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v40

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/UserManager;->installPackageForAllUsers(Ljava/lang/String;I)V

    .line 3491
    .end local v27           #msg:Ljava/lang/String;
    :cond_29
    if-nez v43, :cond_2a

    .line 3492
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/pm/PackageManagerService;->mHasSystemUidErrors:Z

    .line 3495
    .end local v45           #ret:I
    :cond_2a
    if-nez v43, :cond_2c

    .line 3496
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/mismatched_uid/settings_"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/fs_"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mOutPermissions:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3499
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has mismatched uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mOutPermissions:[I

    const/4 v10, 0x1

    aget v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on disk, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in settings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3505
    .restart local v27       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 3506
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3508
    const/16 v51, 0x1

    .line 3509
    move-object/from16 v0, v41

    iget-boolean v3, v0, Lcom/android/server/pm/PackageSetting;->uidError:Z

    if-nez v3, :cond_2b

    .line 3510
    const/4 v3, 0x6

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3512
    :cond_2b
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3515
    .end local v27           #msg:Ljava/lang/String;
    .end local v43           #recovered:Z
    :cond_2c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3549
    :goto_10
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-nez v3, :cond_2d

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 3550
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    if-nez v3, :cond_31

    .line 3551
    new-instance v3, Ljava/io/File;

    const-string v4, "lib"

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    .line 3552
    .local v30, nativeLibraryPath:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v30

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3553
    move-object/from16 v0, v30

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    .line 3559
    .end local v30           #nativeLibraryPath:Ljava/lang/String;
    :cond_2d
    :goto_11
    move/from16 v0, v51

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->uidError:Z

    goto/16 :goto_d

    .line 3512
    .restart local v27       #msg:Ljava/lang/String;
    .restart local v43       #recovered:Z
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 3522
    .end local v27           #msg:Ljava/lang/String;
    .end local v43           #recovered:Z
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v40

    invoke-virtual {v3, v0, v4, v10}, Lcom/android/server/pm/Installer;->install(Ljava/lang/String;II)I

    move-result v45

    .line 3524
    .restart local v45       #ret:I
    if-gez v45, :cond_2f

    .line 3526
    const/4 v3, -0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 3527
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 3530
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManager;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v40

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/UserManager;->installPackageForAllUsers(Ljava/lang/String;I)V

    .line 3532
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3533
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_10

    .line 3535
    :cond_30
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to create data directory: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_10

    .line 3555
    .end local v45           #ret:I
    :cond_31
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    goto :goto_11

    .line 3590
    .end local v51           #uidError:Z
    .restart local v19       #dataPathString:Ljava/lang/String;
    .restart local v29       #nativeLibraryDir:Ljava/io/File;
    .restart local v37       #path:Ljava/lang/String;
    :cond_32
    :try_start_7
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v3

    if-eqz v3, :cond_34

    .line 3599
    :try_start_8
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v3

    iget v3, v3, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v3}, Llibcore/io/OsConstants;->S_ISLNK(I)Z
    :try_end_8
    .catch Llibcore/io/ErrnoException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v25

    .line 3604
    .local v25, isSymLink:Z
    :goto_12
    if-eqz v25, :cond_33

    .line 3605
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/pm/Installer;->unlinkNativeLibraryDirectory(Ljava/lang/String;)I

    .line 3613
    :cond_33
    move-object/from16 v0, v47

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_e

    .line 3619
    .end local v19           #dataPathString:Ljava/lang/String;
    .end local v25           #isSymLink:Z
    .end local v29           #nativeLibraryDir:Ljava/io/File;
    :catch_0
    move-exception v24

    .line 3620
    .local v24, ioe:Ljava/io/IOException;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to get canonical file "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 3600
    .end local v24           #ioe:Ljava/io/IOException;
    .restart local v19       #dataPathString:Ljava/lang/String;
    .restart local v29       #nativeLibraryDir:Ljava/io/File;
    :catch_1
    move-exception v20

    .line 3602
    .local v20, e:Llibcore/io/ErrnoException;
    const/16 v25, 0x1

    .restart local v25       #isSymLink:Z
    goto :goto_12

    .line 3615
    .end local v20           #e:Llibcore/io/ErrnoException;
    .end local v25           #isSymLink:Z
    :cond_34
    :try_start_a
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Linking native library dir for "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_e

    .line 3626
    .end local v19           #dataPathString:Ljava/lang/String;
    .end local v29           #nativeLibraryDir:Ljava/io/File;
    :cond_35
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 3633
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    if-eqz v3, :cond_37

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string v4, "android.permission.FACTORY_TEST"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 3635
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3641
    :cond_37
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_38

    .line 3642
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    .line 3647
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 3649
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_39

    .line 3650
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3653
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/Settings;->insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    .line 3655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3660
    const-wide/16 v10, 0x0

    cmp-long v3, p4, v10

    if-eqz v3, :cond_3c

    .line 3661
    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_3b

    .line 3662
    move-wide/from16 v0, p4

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    move-wide/from16 v0, p4

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3677
    :cond_3a
    :goto_13
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3678
    .restart local v14       #N:I
    const/16 v42, 0x0

    .line 3680
    .local v42, r:Ljava/lang/StringBuilder;
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_14
    move/from16 v0, v23

    if-ge v0, v14, :cond_45

    .line 3681
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/PackageParser$Provider;

    .line 3682
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 3684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v12, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3686
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v3, v3, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    move-object/from16 v0, v35

    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 3687
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v3, :cond_42

    .line 3688
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 3689
    .restart local v28       #names:[Ljava/lang/String;
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v10, 0x0

    iput-object v10, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 3690
    const/16 v26, 0x0

    .restart local v26       #j:I
    move-object/from16 v36, v35

    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .local v36, p:Landroid/content/pm/PackageParser$Provider;
    :goto_15
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v26

    if-ge v0, v3, :cond_41

    .line 3691
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_6d

    move-object/from16 v0, v36

    iget-boolean v3, v0, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-eqz v3, :cond_6d

    .line 3699
    new-instance v35, Landroid/content/pm/PackageParser$Provider;

    invoke-direct/range {v35 .. v36}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 3700
    .end local v36           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    const/4 v3, 0x0

    move-object/from16 v0, v35

    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 3702
    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    aget-object v10, v28, v26

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 3703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    aget-object v10, v28, v26

    move-object/from16 v0, v35

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3704
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v3, :cond_3e

    .line 3705
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    aget-object v10, v28, v26

    iput-object v10, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 3690
    :goto_17
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v36, v35

    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v36       #p:Landroid/content/pm/PackageParser$Provider;
    goto :goto_15

    .line 3663
    .end local v14           #N:I
    .end local v23           #i:I
    .end local v26           #j:I
    .end local v28           #names:[Ljava/lang/String;
    .end local v36           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v42           #r:Ljava/lang/StringBuilder;
    :cond_3b
    and-int/lit8 v3, p3, 0x40

    if-eqz v3, :cond_3a

    .line 3664
    move-wide/from16 v0, p4

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    goto/16 :goto_13

    .line 3928
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v3

    .line 3666
    :cond_3c
    :try_start_c
    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_3d

    .line 3668
    move-wide/from16 v0, v48

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    move-wide/from16 v0, v48

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    goto/16 :goto_13

    .line 3669
    :cond_3d
    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_3a

    .line 3670
    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    cmp-long v3, v48, v10

    if-eqz v3, :cond_3a

    .line 3673
    move-wide/from16 v0, v48

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    goto/16 :goto_13

    .line 3707
    .restart local v14       #N:I
    .restart local v23       #i:I
    .restart local v26       #j:I
    .restart local v28       #names:[Ljava/lang/String;
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :cond_3e
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v28, v26

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_17

    .line 3716
    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    aget-object v10, v28, v26

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/PackageParser$Provider;

    .line 3717
    .restart local v34       #other:Landroid/content/pm/PackageParser$Provider;
    const-string v10, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping provider name "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v11, v28, v26

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " (in package "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "): name already used by "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v34, :cond_40

    invoke-virtual/range {v34 .. v34}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-virtual/range {v34 .. v34}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_18
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_40
    const-string v3, "?"

    goto :goto_18

    .end local v34           #other:Landroid/content/pm/PackageParser$Provider;
    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v36       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_41
    move-object/from16 v35, v36

    .line 3725
    .end local v26           #j:I
    .end local v28           #names:[Ljava/lang/String;
    .end local v36           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_42
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_43

    .line 3726
    if-nez v42, :cond_44

    .line 3727
    new-instance v42, Ljava/lang/StringBuilder;

    .end local v42           #r:Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3731
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :goto_19
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3680
    :cond_43
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_14

    .line 3729
    :cond_44
    const/16 v3, 0x20

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 3734
    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_45
    if-eqz v42, :cond_46

    .line 3738
    :cond_46
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3739
    const/16 v42, 0x0

    .line 3740
    const/16 v23, 0x0

    :goto_1a
    move/from16 v0, v23

    if-ge v0, v14, :cond_49

    .line 3741
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/pm/PackageParser$Service;

    .line 3742
    .local v46, s:Landroid/content/pm/PackageParser$Service;
    move-object/from16 v0, v46

    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget-object v11, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 3744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mServices:Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->addService(Landroid/content/pm/PackageParser$Service;)V

    .line 3745
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_47

    .line 3746
    if-nez v42, :cond_48

    .line 3747
    new-instance v42, Ljava/lang/StringBuilder;

    .end local v42           #r:Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3751
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :goto_1b
    move-object/from16 v0, v46

    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3740
    :cond_47
    add-int/lit8 v23, v23, 0x1

    goto :goto_1a

    .line 3749
    :cond_48
    const/16 v3, 0x20

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 3754
    .end local v46           #s:Landroid/content/pm/PackageParser$Service;
    :cond_49
    if-eqz v42, :cond_4a

    .line 3758
    :cond_4a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3759
    const/16 v42, 0x0

    .line 3760
    const/16 v23, 0x0

    :goto_1c
    move/from16 v0, v23

    if-ge v0, v14, :cond_4d

    .line 3761
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Activity;

    .line 3762
    .local v15, a:Landroid/content/pm/PackageParser$Activity;
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v11, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3764
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mReceivers:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    const-string v10, "receiver"

    invoke-virtual {v3, v15, v10}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3765
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_4b

    .line 3766
    if-nez v42, :cond_4c

    .line 3767
    new-instance v42, Ljava/lang/StringBuilder;

    .end local v42           #r:Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3771
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :goto_1d
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3760
    :cond_4b
    add-int/lit8 v23, v23, 0x1

    goto :goto_1c

    .line 3769
    :cond_4c
    const/16 v3, 0x20

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 3774
    .end local v15           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_4d
    if-eqz v42, :cond_4e

    .line 3778
    :cond_4e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3779
    const/16 v42, 0x0

    .line 3780
    const/16 v23, 0x0

    :goto_1e
    move/from16 v0, v23

    if-ge v0, v14, :cond_51

    .line 3781
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Activity;

    .line 3782
    .restart local v15       #a:Landroid/content/pm/PackageParser$Activity;
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v11, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    const-string v10, "activity"

    invoke-virtual {v3, v15, v10}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3785
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_4f

    .line 3786
    if-nez v42, :cond_50

    .line 3787
    new-instance v42, Ljava/lang/StringBuilder;

    .end local v42           #r:Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3791
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :goto_1f
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3780
    :cond_4f
    add-int/lit8 v23, v23, 0x1

    goto :goto_1e

    .line 3789
    :cond_50
    const/16 v3, 0x20

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 3794
    .end local v15           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_51
    if-eqz v42, :cond_52

    .line 3798
    :cond_52
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3799
    const/16 v42, 0x0

    .line 3800
    const/16 v23, 0x0

    :goto_20
    move/from16 v0, v23

    if-ge v0, v14, :cond_57

    .line 3801
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 3802
    .local v39, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object/from16 v0, v39

    iget-object v10, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 3803
    .local v17, cur:Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v17, :cond_55

    .line 3804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object/from16 v0, v39

    iget-object v10, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3805
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_53

    .line 3806
    if-nez v42, :cond_54

    .line 3807
    new-instance v42, Ljava/lang/StringBuilder;

    .end local v42           #r:Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3811
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :goto_21
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3800
    :cond_53
    :goto_22
    add-int/lit8 v23, v23, 0x1

    goto :goto_20

    .line 3809
    :cond_54
    const/16 v3, 0x20

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 3814
    :cond_55
    const-string v3, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v39

    iget-object v11, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v39

    iget-object v11, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ignored: original from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_53

    .line 3818
    if-nez v42, :cond_56

    .line 3819
    new-instance v42, Ljava/lang/StringBuilder;

    .end local v42           #r:Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3823
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :goto_23
    const-string v3, "DUP:"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3824
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 3821
    :cond_56
    const/16 v3, 0x20

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 3828
    .end local v17           #cur:Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v39           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :cond_57
    if-eqz v42, :cond_58

    .line 3832
    :cond_58
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3833
    const/16 v42, 0x0

    .line 3834
    const/16 v23, 0x0

    :goto_24
    move/from16 v0, v23

    if-ge v0, v14, :cond_66

    .line 3835
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/PackageParser$Permission;

    .line 3836
    .local v35, p:Landroid/content/pm/PackageParser$Permission;
    move-object/from16 v0, v35

    iget-boolean v3, v0, Landroid/content/pm/PackageParser$Permission;->tree:Z

    if-eqz v3, :cond_5f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v3, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v38, v0

    .line 3839
    .local v38, permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :goto_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object/from16 v0, v35

    iget-object v10, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, v35

    iput-object v3, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 3840
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_59

    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-eqz v3, :cond_65

    .line 3841
    :cond_59
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/BasePermission;

    .line 3842
    .local v16, bp:Lcom/android/server/pm/BasePermission;
    if-nez v16, :cond_5a

    .line 3843
    new-instance v16, Lcom/android/server/pm/BasePermission;

    .end local v16           #bp:Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v10, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v10, v11}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3845
    .restart local v16       #bp:Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3847
    :cond_5a
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-nez v3, :cond_63

    .line 3848
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v3, :cond_5b

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v10, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 3850
    :cond_5b
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/pm/BasePermission;

    move-result-object v50

    .line 3851
    .local v50, tree:Lcom/android/server/pm/BasePermission;
    if-eqz v50, :cond_5c

    move-object/from16 v0, v50

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v10, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 3853
    :cond_5c
    move-object/from16 v0, v41

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 3854
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 3855
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/server/pm/BasePermission;->uid:I

    .line 3856
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_5d

    .line 3857
    if-nez v42, :cond_60

    .line 3858
    new-instance v42, Ljava/lang/StringBuilder;

    .end local v42           #r:Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3862
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :goto_26
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    .end local v50           #tree:Lcom/android/server/pm/BasePermission;
    :cond_5d
    :goto_27
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, v35

    if-ne v3, v0, :cond_5e

    .line 3885
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 3834
    .end local v16           #bp:Lcom/android/server/pm/BasePermission;
    :cond_5e
    :goto_28
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_24

    .line 3836
    .end local v38           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v3, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v38, v0

    goto/16 :goto_25

    .line 3860
    .restart local v16       #bp:Lcom/android/server/pm/BasePermission;
    .restart local v38       #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    .restart local v50       #tree:Lcom/android/server/pm/BasePermission;
    :cond_60
    const/16 v3, 0x20

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 3865
    :cond_61
    const-string v3, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ignored: base tree "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v50

    iget-object v11, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v50

    iget-object v11, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 3871
    .end local v50           #tree:Lcom/android/server/pm/BasePermission;
    :cond_62
    const-string v3, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ignored: original from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 3875
    :cond_63
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_5d

    .line 3876
    if-nez v42, :cond_64

    .line 3877
    new-instance v42, Ljava/lang/StringBuilder;

    .end local v42           #r:Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3881
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :goto_29
    const-string v3, "DUP:"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    .line 3879
    :cond_64
    const/16 v3, 0x20

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 3888
    .end local v16           #bp:Lcom/android/server/pm/BasePermission;
    :cond_65
    const-string v3, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ignored: no group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    iget-object v11, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 3893
    .end local v35           #p:Landroid/content/pm/PackageParser$Permission;
    .end local v38           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_66
    if-eqz v42, :cond_67

    .line 3897
    :cond_67
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3898
    const/16 v42, 0x0

    .line 3899
    const/16 v23, 0x0

    :goto_2a
    move/from16 v0, v23

    if-ge v0, v14, :cond_6a

    .line 3900
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Instrumentation;

    .line 3901
    .local v15, a:Landroid/content/pm/PackageParser$Instrumentation;
    iget-object v3, v15, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v10, v3, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 3902
    iget-object v3, v15, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v10, v3, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 3903
    iget-object v3, v15, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v10, v3, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 3904
    iget-object v3, v15, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v10, v3, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 3905
    iget-object v3, v15, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v10, v3, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v15}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v3, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3907
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_68

    .line 3908
    if-nez v42, :cond_69

    .line 3909
    new-instance v42, Ljava/lang/StringBuilder;

    .end local v42           #r:Ljava/lang/StringBuilder;
    const/16 v3, 0x100

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3913
    .restart local v42       #r:Ljava/lang/StringBuilder;
    :goto_2b
    iget-object v3, v15, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v3, v3, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3899
    :cond_68
    add-int/lit8 v23, v23, 0x1

    goto :goto_2a

    .line 3911
    :cond_69
    const/16 v3, 0x20

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 3916
    .end local v15           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_6a
    if-eqz v42, :cond_6b

    .line 3920
    :cond_6b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-eqz v3, :cond_6c

    .line 3921
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3922
    const/16 v23, 0x0

    :goto_2c
    move/from16 v0, v23

    if-ge v0, v14, :cond_6c

    .line 3923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3922
    add-int/lit8 v23, v23, 0x1

    goto :goto_2c

    .line 3927
    :cond_6c
    move-object/from16 v0, v41

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3928
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_0

    .restart local v26       #j:I
    .restart local v28       #names:[Ljava/lang/String;
    .restart local v36       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_6d
    move-object/from16 v35, v36

    .end local v36           #p:Landroid/content/pm/PackageParser$Provider;
    .local v35, p:Landroid/content/pm/PackageParser$Provider;
    goto/16 :goto_16
.end method

.method private scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    .locals 19
    .parameter "scanFile"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "currentTime"

    .prologue
    .line 2846
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 2847
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 2848
    .local v17, scanPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    or-int p2, p2, v3

    .line 2849
    new-instance v4, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 2850
    .local v4, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 2851
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageParser;->setOnlyCoreApps(Z)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 2854
    .local v6, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_0

    .line 2855
    invoke-virtual {v4}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 2856
    const/4 v3, 0x0

    .line 2948
    :goto_0
    return-object v3

    .line 2858
    :cond_0
    const/4 v5, 0x0

    .line 2861
    .local v5, ps:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 2863
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2864
    .local v15, oldName:Ljava/lang/String;
    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v15}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 2870
    :cond_1
    if-nez v5, :cond_2

    .line 2871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 2876
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v3, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    if-eqz v5, :cond_3

    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/pm/PackageSetting;

    .line 2878
    .local v18, updatedPkg:Lcom/android/server/pm/PackageSetting;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2880
    if-eqz v18, :cond_5

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_5

    .line 2881
    if-eqz v5, :cond_5

    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2885
    iget v3, v6, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v7, v5, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-ge v3, v7, :cond_4

    .line 2888
    const-string v3, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: updated version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " better than this "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    const/4 v3, -0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 2892
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2876
    .end local v18           #updatedPkg:Lcom/android/server/pm/PackageSetting;
    :cond_3
    :try_start_1
    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 2878
    .end local v15           #oldName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2901
    .restart local v15       #oldName:Ljava/lang/String;
    .restart local v18       #updatedPkg:Lcom/android/server/pm/PackageSetting;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 2903
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2904
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2905
    const-string v3, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "reverting from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": new version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " better than installed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    new-instance v13, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;

    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3, v7, v8}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    .local v13, args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->cleanUpResourcesLI()V

    .line 2912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2916
    .end local v13           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_5
    if-eqz v18, :cond_6

    .line 2918
    or-int/lit8 p2, p2, 0x1

    :cond_6
    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 2921
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2922
    const-string v3, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed verifying certificates for package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2904
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2928
    :cond_7
    if-eqz v5, :cond_8

    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v3, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2929
    or-int/lit8 p2, p2, 0x10

    .line 2932
    :cond_8
    const/4 v14, 0x0

    .line 2933
    .local v14, codePath:Ljava/lang/String;
    const/16 v16, 0x0

    .line 2934
    .local v16, resPath:Ljava/lang/String;
    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_a

    .line 2935
    if-eqz v5, :cond_9

    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2936
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2944
    :goto_2
    iget-object v14, v6, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 2946
    move-object/from16 v0, v16

    invoke-static {v6, v14, v0}, Lcom/android/server/pm/PackageManagerService;->setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    or-int/lit8 v10, p3, 0x8

    move-object/from16 v7, p0

    move-object v8, v6

    move/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    goto/16 :goto_0

    .line 2939
    :cond_9
    const-string v3, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource path not set for pkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2942
    :cond_a
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_2
.end method

.method static final sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V
    .locals 11
    .parameter "action"
    .parameter "pkg"
    .parameter "extras"
    .parameter "targetPkg"
    .parameter "finishedReceiver"

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 4738
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4739
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_4

    .line 4741
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "package"

    const/4 v3, 0x0

    invoke-static {v1, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4743
    .local v2, intent:Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 4744
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4746
    :cond_1
    if-eqz p3, :cond_2

    .line 4747
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4749
    :cond_2
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4750
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p4, :cond_3

    const/4 v9, 0x1

    :cond_3
    const/4 v10, 0x0

    move-object v4, p4

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4755
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    :goto_0
    return-void

    .line 4752
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .locals 5
    .parameter "packageName"
    .parameter "killFlag"
    .parameter
    .parameter "packageUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, componentNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 7671
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 7672
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.changed_component_name"

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7673
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 7674
    .local v1, nameList:[Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7675
    const-string v2, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7676
    const-string v2, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7677
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7678
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {v2, p1, v0, v4, v4}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 7679
    return-void
.end method

.method private sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .locals 6
    .parameter "mediaStatus"
    .parameter
    .parameter "uidArr"
    .parameter "finishedReceiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[I",
            "Landroid/content/IIntentReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 8223
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8224
    .local v2, size:I
    if-lez v2, :cond_1

    .line 8226
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8227
    .local v1, extras:Landroid/os/Bundle;
    const-string v4, "android.intent.extra.changed_package_list"

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8229
    if-eqz p3, :cond_0

    .line 8230
    const-string v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8232
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 8234
    .local v0, action:Ljava/lang/String;
    :goto_0
    invoke-static {v0, v5, v1, v5, p4}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 8236
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1
    return-void

    .line 8232
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_2
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    goto :goto_0
.end method

.method private setAccessControl(Ljava/lang/String;II)Z
    .locals 7
    .parameter "packageName"
    .parameter "newState"
    .parameter "flags"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x8000

    .line 8680
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 8681
    if-eq p2, v5, :cond_0

    const/4 v2, 0x0

    :try_start_0
    monitor-exit v3

    .line 8694
    :goto_0
    return v2

    .line 8682
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 8683
    .local v0, pkg:Landroid/content/pm/PackageParser$Package;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 8684
    .local v1, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 8685
    if-ne p3, v5, :cond_2

    .line 8686
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v2, v5

    iput v2, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 8687
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8692
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 8694
    :cond_1
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 8695
    .end local v0           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v1           #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8689
    .restart local v0       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v1       #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_2
    :try_start_1
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v2, v6

    iput v2, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 8690
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v6

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"
    .parameter "destCodePath"
    .parameter "destResPath"

    .prologue
    .line 2953
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 2954
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2955
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2956
    return-void
.end method

.method private setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 20
    .parameter "packageName"
    .parameter "className"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 7562
    if-eqz p3, :cond_0

    const/4 v15, 0x1

    move/from16 v0, p3

    if-eq v0, v15, :cond_0

    const/4 v15, 0x2

    move/from16 v0, p3

    if-eq v0, v15, :cond_0

    const/4 v15, 0x3

    move/from16 v0, p3

    if-eq v0, v15, :cond_0

    .line 7566
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid new component state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 7570
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 7571
    .local v14, uid:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v11

    .line 7573
    .local v11, permission:I
    if-nez v11, :cond_1

    const/4 v3, 0x1

    .line 7574
    .local v3, allowedByPermission:Z
    :goto_0
    const/4 v13, 0x0

    .line 7575
    .local v13, sendNow:Z
    if-nez p2, :cond_2

    const/4 v8, 0x1

    .line 7576
    .local v8, isApp:Z
    :goto_1
    if-eqz v8, :cond_3

    move-object/from16 v6, p1

    .line 7577
    .local v6, componentName:Ljava/lang/String;
    :goto_2
    const/4 v10, -0x1

    .line 7581
    .local v10, packageUid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 7582
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v15, v15, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 7583
    .local v12, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-nez v12, :cond_5

    .line 7584
    if-nez p2, :cond_4

    .line 7585
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unknown package: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 7653
    .end local v12           #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 7573
    .end local v3           #allowedByPermission:Z
    .end local v6           #componentName:Ljava/lang/String;
    .end local v8           #isApp:Z
    .end local v10           #packageUid:I
    .end local v13           #sendNow:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 7575
    .restart local v3       #allowedByPermission:Z
    .restart local v13       #sendNow:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .restart local v8       #isApp:Z
    :cond_3
    move-object/from16 v6, p2

    .line 7576
    goto :goto_2

    .line 7588
    .restart local v6       #componentName:Ljava/lang/String;
    .restart local v10       #packageUid:I
    .restart local v12       #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_4
    :try_start_1
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unknown component: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 7592
    :cond_5
    if-nez v3, :cond_6

    iget v15, v12, Lcom/android/server/pm/PackageSetting;->userId:I

    if-eq v14, v15, :cond_6

    .line 7593
    new-instance v15, Ljava/lang/SecurityException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Permission Denial: attempt to change component state from pid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", package uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v12, Lcom/android/server/pm/PackageSetting;->userId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 7598
    :cond_6
    if-nez p2, :cond_d

    .line 7600
    iget v15, v12, Lcom/android/server/pm/PackageSetting;->enabled:I

    move/from16 v0, p3

    if-ne v15, v0, :cond_7

    .line 7602
    monitor-exit v16

    .line 7664
    :goto_3
    return-void

    .line 7604
    :cond_7
    move/from16 v0, p3

    iput v0, v12, Lcom/android/server/pm/PackageSetting;->enabled:I

    .line 7605
    iget-object v15, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move/from16 v0, p3

    iput v0, v15, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    .line 7629
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 7630
    iget v10, v12, Lcom/android/server/pm/PackageSetting;->userId:I

    .line 7631
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 7632
    .local v7, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v7, :cond_e

    const/4 v9, 0x1

    .line 7633
    .local v9, newPackage:Z
    :goto_4
    if-eqz v9, :cond_9

    .line 7634
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7636
    .restart local v7       #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 7637
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7639
    :cond_a
    and-int/lit8 v15, p4, 0x1

    if-nez v15, :cond_f

    .line 7640
    const/4 v13, 0x1

    .line 7643
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7653
    :cond_b
    :goto_5
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7657
    .local v4, callingId:J
    if-eqz v13, :cond_c

    .line 7658
    and-int/lit8 v15, p4, 0x1

    if-eqz v15, :cond_11

    const/4 v15, 0x1

    :goto_6
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v7, v10}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7662
    :cond_c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 7608
    .end local v4           #callingId:J
    .end local v7           #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #newPackage:Z
    :cond_d
    packed-switch p3, :pswitch_data_0

    .line 7625
    :try_start_3
    const-string v15, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid new component state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7626
    monitor-exit v16

    goto :goto_3

    .line 7610
    :pswitch_0
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->enableComponentLPw(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 7611
    monitor-exit v16

    goto/16 :goto_3

    .line 7615
    :pswitch_1
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->disableComponentLPw(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 7616
    monitor-exit v16

    goto/16 :goto_3

    .line 7620
    :pswitch_2
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 7621
    monitor-exit v16

    goto/16 :goto_3

    .line 7632
    .restart local v7       #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    .line 7645
    .restart local v9       #newPackage:Z
    :cond_f
    if-eqz v9, :cond_10

    .line 7646
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7648
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->hasMessages(I)Z

    move-result v15

    if-nez v15, :cond_b

    .line 7650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v17, 0x1

    const-wide/16 v18, 0x2710

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 7658
    .restart local v4       #callingId:J
    :cond_11
    const/4 v15, 0x0

    goto :goto_6

    .line 7662
    :catchall_1
    move-exception v15

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15

    .line 7608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPermissionsLI(Landroid/content/pm/PackageParser$Package;)I
    .locals 7
    .parameter "newPackage"

    .prologue
    const/4 v3, -0x4

    .line 6714
    const/4 v2, 0x0

    .line 6717
    .local v2, retCode:I
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6718
    new-instance v0, Ljava/io/File;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6720
    .local v0, destResourceFile:Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6728
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/Installer;->setForwardLockPerm(Ljava/lang/String;I)I

    move-result v2

    .line 6735
    .end local v0           #destResourceFile:Ljava/io/File;
    :cond_0
    if-eqz v2, :cond_1

    .line 6736
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t set new package file permissions for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". The return code was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6741
    :goto_0
    return v3

    .line 6721
    .restart local v0       #destResourceFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 6722
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v4, "PackageManager"

    const-string v5, "Couldn\'t create a new zip file for the public parts of a forward-locked app."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6725
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    throw v3

    .line 6741
    .end local v0           #destResourceFile:Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static splitString(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "sep"

    .prologue
    .line 840
    const/4 v0, 0x1

    .line 841
    .local v0, count:I
    const/4 v1, 0x0

    .line 842
    .local v1, i:I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 843
    add-int/lit8 v0, v0, 0x1

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_0
    new-array v3, v0, [Ljava/lang/String;

    .line 848
    .local v3, res:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 849
    const/4 v0, 0x0

    .line 850
    const/4 v2, 0x0

    .line 851
    .local v2, lastI:I
    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    .line 852
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 853
    add-int/lit8 v0, v0, 0x1

    .line 854
    add-int/lit8 v1, v1, 0x1

    .line 855
    move v2, v1

    goto :goto_1

    .line 857
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 858
    return-object v3
.end method

.method private unloadAllContainers(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageManagerService$SdInstallArgs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8347
    .local p1, cidArgs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$SdInstallArgs;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;

    .line 8348
    .local v0, arg:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8349
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->doPostDeleteLI(Z)Z

    .line 8350
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8352
    .end local v0           #arg:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    :cond_0
    return-void
.end method

.method private unloadMediaPackages(Ljava/util/HashMap;[IZ)V
    .locals 15
    .parameter
    .parameter "uidArr"
    .parameter "reportStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/PackageManagerService$SdInstallArgs;",
            "Ljava/lang/String;",
            ">;[IZ)V"
        }
    .end annotation

    .prologue
    .line 8367
    .local p1, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/pm/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 8368
    .local v12, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8369
    .local v8, failedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$SdInstallArgs;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 8370
    .local v10, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$SdInstallArgs;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;

    .line 8371
    .local v7, args:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8375
    .local v2, pkgName:Ljava/lang/String;
    new-instance v5, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v5}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>()V

    .line 8376
    .local v5, outInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    iget-object v14, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v14

    .line 8377
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/pm/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v13

    .line 8379
    .local v13, res:Z
    if-eqz v13, :cond_0

    .line 8380
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8385
    :goto_1
    monitor-exit v14

    goto :goto_0

    .end local v13           #res:Z
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8382
    .restart local v13       #res:Z
    :cond_0
    :try_start_1
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete pkg from sdcard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8383
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 8389
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v5           #outInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v7           #args:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    .end local v13           #res:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 8392
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 8393
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8399
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 8400
    const/4 v1, 0x0

    new-instance v3, Lcom/android/server/pm/PackageManagerService$12;

    move/from16 v0, p3

    invoke-direct {v3, p0, v0, v10}, Lcom/android/server/pm/PackageManagerService$12;-><init>(Lcom/android/server/pm/PackageManagerService;ZLjava/util/Set;)V

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v12, v0, v3}, Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 8413
    :goto_2
    return-void

    .line 8393
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 8409
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v4, 0xc

    if-eqz p3, :cond_3

    const/4 v1, 0x1

    :goto_3
    const/4 v6, -0x1

    invoke-virtual {v3, v4, v1, v6, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 8411
    .local v11, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 8409
    .end local v11           #msg:Landroid/os/Message;
    :cond_3
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private updateExternalMediaStatusInner(ZZ)V
    .locals 24
    .parameter "mediaStatus"
    .parameter "reportStatus"

    .prologue
    .line 8142
    const/16 v19, 0x0

    .line 8144
    .local v19, uidArr:[I
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 8146
    .local v17, removeCids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 8148
    .local v15, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/pm/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v11

    .line 8149
    .local v11, list:[Ljava/lang/String;
    if-eqz v11, :cond_0

    array-length v0, v11

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 8150
    :cond_0
    const-string v21, "PackageManager"

    const-string v22, "No secure containers on sdcard"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8209
    :cond_1
    if-eqz p1, :cond_7

    .line 8212
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/PackageManagerService;->loadMediaPackages(Ljava/util/HashMap;[ILjava/util/HashSet;)V

    .line 8213
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    .line 8219
    :goto_0
    return-void

    .line 8154
    :cond_2
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 8155
    .local v20, uidList:[I
    const/4 v12, 0x0

    .line 8157
    .local v12, num:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 8158
    move-object v4, v11

    .local v4, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v10, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v13, v12

    .end local v12           #num:I
    .local v13, num:I
    :goto_1
    if-ge v9, v10, :cond_6

    :try_start_1
    aget-object v5, v4, v9

    .line 8159
    .local v5, cid:Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 8162
    .local v3, args:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 8163
    .local v14, pkgName:Ljava/lang/String;
    if-nez v14, :cond_3

    .line 8166
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v12, v13

    .line 8158
    .end local v13           #num:I
    .restart local v12       #num:I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v13, v12

    .end local v12           #num:I
    .restart local v13       #num:I
    goto :goto_1

    .line 8171
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    .line 8174
    .local v16, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 8180
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8181
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    move/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8182
    .local v18, uid:I
    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 8183
    add-int/lit8 v12, v13, 0x1

    .end local v13           #num:I
    .restart local v12       #num:I
    :try_start_2
    aput v18, v20, v13

    goto :goto_2

    .line 8192
    .end local v3           #args:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    .end local v5           #cid:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v14           #pkgName:Ljava/lang/String;
    .end local v16           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v18           #uid:I
    :catchall_0
    move-exception v21

    :goto_3
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 8189
    .end local v12           #num:I
    .restart local v3       #args:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    .restart local v5       #cid:Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v13       #num:I
    .restart local v14       #pkgName:Ljava/lang/String;
    .restart local v16       #ps:Lcom/android/server/pm/PackageSetting;
    :cond_4
    :try_start_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    move v12, v13

    .end local v13           #num:I
    .restart local v12       #num:I
    goto :goto_2

    .line 8192
    .end local v3           #args:Lcom/android/server/pm/PackageManagerService$SdInstallArgs;
    .end local v5           #cid:Ljava/lang/String;
    .end local v12           #num:I
    .end local v14           #pkgName:Ljava/lang/String;
    .end local v16           #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v13       #num:I
    :cond_6
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8194
    if-lez v13, :cond_1

    .line 8196
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v13}, Ljava/util/Arrays;->sort([III)V

    .line 8198
    new-array v0, v13, [I

    move-object/from16 v19, v0

    .line 8199
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v20, v22

    aput v22, v19, v21

    .line 8200
    const/4 v6, 0x0

    .line 8201
    .local v6, di:I
    const/4 v8, 0x1

    .local v8, i:I
    move v7, v6

    .end local v6           #di:I
    .local v7, di:I
    :goto_4
    if-ge v8, v13, :cond_1

    .line 8202
    add-int/lit8 v21, v8, -0x1

    aget v21, v20, v21

    aget v22, v20, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 8203
    add-int/lit8 v6, v7, 0x1

    .end local v7           #di:I
    .restart local v6       #di:I
    aget v21, v20, v8

    aput v21, v19, v7

    .line 8201
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #di:I
    .restart local v7       #di:I
    goto :goto_4

    .line 8217
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #di:I
    .end local v8           #i:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v13           #num:I
    .end local v20           #uidList:[I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/PackageManagerService;->unloadMediaPackages(Ljava/util/HashMap;[IZ)V

    goto/16 :goto_0

    .line 8192
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v13       #num:I
    .restart local v20       #uidList:[I
    :catchall_1
    move-exception v21

    move v12, v13

    .end local v13           #num:I
    .restart local v12       #num:I
    goto :goto_3

    .end local v12           #num:I
    .restart local v7       #di:I
    .restart local v8       #i:I
    .restart local v13       #num:I
    :cond_8
    move v6, v7

    .end local v7           #di:I
    .restart local v6       #di:I
    goto :goto_5
.end method

.method private updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .locals 9
    .parameter "changingPkg"
    .parameter "pkgInfo"
    .parameter "grantPermissions"
    .parameter "replace"
    .parameter "replaceAll"

    .prologue
    .line 4116
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4117
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/BasePermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 4119
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-nez v5, :cond_1

    .line 4122
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSettingBase;

    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 4124
    :cond_1
    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-nez v5, :cond_2

    .line 4125
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 4128
    :cond_2
    if-eqz p1, :cond_0

    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4129
    if-eqz p2, :cond_3

    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/pm/PackageManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4130
    :cond_3
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing old permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    const/4 p3, 0x1

    .line 4133
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 4140
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4141
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 4143
    .restart local v0       #bp:Lcom/android/server/pm/BasePermission;
    iget v5, v0, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 4147
    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_6

    .line 4148
    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/pm/BasePermission;

    move-result-object v4

    .line 4149
    .local v4, tree:Lcom/android/server/pm/BasePermission;
    if-eqz v4, :cond_6

    iget-object v5, v4, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v5, :cond_6

    .line 4150
    iget-object v5, v4, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 4151
    new-instance v5, Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v4, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v7, Landroid/content/pm/PermissionInfo;

    iget-object v8, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 4153
    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v4, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 4154
    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4155
    iget v5, v4, Lcom/android/server/pm/BasePermission;->uid:I

    iput v5, v0, Lcom/android/server/pm/BasePermission;->uid:I

    .line 4159
    .end local v4           #tree:Lcom/android/server/pm/BasePermission;
    :cond_6
    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-nez v5, :cond_7

    .line 4162
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSettingBase;

    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 4164
    :cond_7
    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-nez v5, :cond_8

    .line 4165
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 4168
    :cond_8
    if-eqz p1, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4169
    if-eqz p2, :cond_9

    iget-object v5, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/pm/PackageManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 4170
    :cond_9
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing old permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    const/4 p3, 0x1

    .line 4173
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 4180
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    :cond_a
    if-eqz p3, :cond_c

    .line 4181
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 4182
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eq v3, p2, :cond_b

    .line 4183
    invoke-direct {p0, v3, p5}, Lcom/android/server/pm/PackageManagerService;->grantPermissionsLPw(Landroid/content/pm/PackageParser$Package;Z)V

    goto :goto_2

    .line 4188
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_c
    if-eqz p2, :cond_d

    .line 4189
    invoke-direct {p0, p2, p4}, Lcom/android/server/pm/PackageManagerService;->grantPermissionsLPw(Landroid/content/pm/PackageParser$Package;Z)V

    .line 4191
    :cond_d
    return-void
.end method

.method private updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 8
    .parameter "newPackage"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 6564
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 6565
    .local v6, pkgName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 6569
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v4}, Lcom/android/server/pm/Settings;->setInstallStatus(Ljava/lang/String;I)V

    .line 6570
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 6571
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6573
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v1

    iput v1, p3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v1, v3, :cond_0

    .line 6597
    :goto_0
    return-void

    .line 6571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6578
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->setPermissionsLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v1

    iput v1, p3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v1, v3, :cond_1

    .line 6580
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    goto :goto_0

    .line 6583
    :cond_1
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New package installed in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6585
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 6586
    :try_start_2
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 6588
    iput-object v6, p3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 6589
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 6590
    iput-object p1, p3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 6591
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/pm/Settings;->setInstallStatus(Ljava/lang/String;I)V

    .line 6592
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v6, p2}, Lcom/android/server/pm/Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 6593
    const/4 v0, 0x1

    iput v0, p3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 6595
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 6596
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    move v3, v0

    .line 6586
    goto :goto_1
.end method

.method private verifyPackageUpdateLPr(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)Z
    .locals 4
    .parameter "oldPkg"
    .parameter "newPkg"

    .prologue
    const/4 v0, 0x0

    .line 3100
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 3101
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": old package not in system partition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :goto_0
    return v0

    .line 3105
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3106
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": old package still exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3111
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private verifySignaturesLP(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)Z
    .locals 4
    .parameter "pkgSetting"
    .parameter "pkg"

    .prologue
    const/4 v0, 0x0

    .line 2968
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    .line 2970
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2972
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signatures do not match the previously installed version; ignoring!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    const/4 v1, -0x7

    iput v1, p0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    .line 2989
    :goto_0
    return v0

    .line 2979
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    .line 2980
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2982
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no signatures that match those in shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; ignoring!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    const/4 v1, -0x8

    iput v1, p0, Lcom/android/server/pm/PackageManagerService;->mLastScanError:I

    goto :goto_0

    .line 2989
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 7380
    const-string v0, "PackageManager"

    const-string v1, "addPackageToPreferred: this is now a no-op"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7381
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 1972
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1973
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1974
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 1978
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1979
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1980
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 7
    .parameter "info"
    .parameter "async"

    .prologue
    const/4 v6, 0x2

    .line 1931
    iget v4, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    .line 1932
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Label must be specified in permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1934
    :cond_0
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/pm/BasePermission;

    move-result-object v3

    .line 1935
    .local v3, tree:Lcom/android/server/pm/BasePermission;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 1936
    .local v1, bp:Lcom/android/server/pm/BasePermission;
    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 1937
    .local v0, added:Z
    :goto_0
    const/4 v2, 0x1

    .line 1938
    .local v2, changed:Z
    if-eqz v0, :cond_5

    .line 1939
    new-instance v1, Lcom/android/server/pm/BasePermission;

    .end local v1           #bp:Lcom/android/server/pm/BasePermission;
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1953
    .restart local v1       #bp:Lcom/android/server/pm/BasePermission;
    :cond_1
    :goto_1
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v4, v1, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 1954
    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v3, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v6, Landroid/content/pm/PermissionInfo;

    invoke-direct {v6, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v4, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 1956
    iget-object v4, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v3, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1957
    iget v4, v3, Lcom/android/server/pm/BasePermission;->uid:I

    iput v4, v1, Lcom/android/server/pm/BasePermission;->uid:I

    .line 1958
    if-eqz v0, :cond_2

    .line 1959
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    :cond_2
    if-eqz v2, :cond_3

    .line 1962
    if-nez p2, :cond_7

    .line 1963
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1968
    :cond_3
    :goto_2
    return v0

    .line 1936
    .end local v0           #added:Z
    .end local v2           #changed:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1941
    .restart local v0       #added:Z
    .restart local v2       #changed:Z
    :cond_5
    iget v4, v1, Lcom/android/server/pm/BasePermission;->type:I

    if-eq v4, v6, :cond_6

    .line 1942
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1946
    :cond_6
    iget v4, v1, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v3, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/android/server/pm/BasePermission;->uid:I

    iget v5, v3, Lcom/android/server/pm/BasePermission;->uid:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1950
    const/4 v2, 0x0

    goto :goto_1

    .line 1965
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    goto :goto_2
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 7417
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 7418
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 7421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService;->getUidTargetSdkVersionLockedLPr(I)I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 7423
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring addPreferredActivity() from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7425
    monitor-exit v1

    .line 7437
    :goto_0
    return-void

    .line 7427
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7431
    :cond_1
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding preferred activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7432
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v2, 0x4

    const-string v3, "PackageManager"

    invoke-direct {v0, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v0, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 7433
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v2}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 7435
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 7436
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "names"

    .prologue
    .line 1533
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 1535
    .local v2, out:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1536
    :try_start_0
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1537
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1538
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #cur:Ljava/lang/String;
    :goto_1
    aput-object v0, v2, v1

    .line 1536
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1538
    .restart local v0       #cur:Ljava/lang/String;
    :cond_0
    aget-object v0, p1, v1

    goto :goto_1

    .line 1540
    .end local v0           #cur:Ljava/lang/String;
    :cond_1
    monitor-exit v4

    .line 1541
    return-object v2

    .line 1540
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    const/4 v2, 0x0

    .line 1840
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1841
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1842
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 1843
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1844
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_0

    .line 1845
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1846
    monitor-exit v3

    .line 1853
    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    :goto_0
    return v2

    .line 1848
    .restart local v1       #ps:Lcom/android/server/pm/PackageSetting;
    :cond_0
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1849
    monitor-exit v3

    goto :goto_0

    .line 1852
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #p:Landroid/content/pm/PackageParser$Package;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1853
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 2006
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 2007
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 2008
    .local v0, p1:Landroid/content/pm/PackageParser$Package;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 2009
    .local v1, p2:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 2011
    :cond_0
    const/4 v2, -0x4

    monitor-exit v3

    .line 2013
    :goto_0
    return v2

    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 2014
    .end local v0           #p1:Landroid/content/pm/PackageParser$Package;
    .end local v1           #p2:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 7
    .parameter "permName"
    .parameter "uid"

    .prologue
    const/4 v4, 0x0

    .line 1857
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 1858
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, p2}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v2

    .line 1859
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1860
    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/GrantedPermissions;

    move-object v1, v0

    .line 1861
    .local v1, gp:Lcom/android/server/pm/GrantedPermissions;
    iget-object v6, v1, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1862
    monitor-exit v5

    .line 1871
    .end local v1           #gp:Lcom/android/server/pm/GrantedPermissions;
    :goto_0
    return v4

    .line 1865
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1866
    .local v3, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1867
    monitor-exit v5

    goto :goto_0

    .line 1870
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #obj:Ljava/lang/Object;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1871
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public checkUidSignatures(II)I
    .locals 7
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    const/4 v4, -0x4

    .line 2019
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 2022
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, p1}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v1

    .line 2023
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 2024
    instance-of v6, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_0

    .line 2025
    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .end local v1           #obj:Ljava/lang/Object;
    iget-object v6, v1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v6, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 2034
    .local v2, s1:[Landroid/content/pm/Signature;
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, p2}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v1

    .line 2035
    .restart local v1       #obj:Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 2036
    instance-of v6, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_3

    .line 2037
    move-object v0, v1

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 2046
    .local v3, s2:[Landroid/content/pm/Signature;
    :goto_1
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    monitor-exit v5

    .end local v2           #s1:[Landroid/content/pm/Signature;
    .end local v3           #s2:[Landroid/content/pm/Signature;
    :goto_2
    return v4

    .line 2026
    :cond_0
    instance-of v6, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_1

    .line 2027
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .end local v1           #obj:Ljava/lang/Object;
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v6, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .restart local v2       #s1:[Landroid/content/pm/Signature;
    goto :goto_0

    .line 2029
    .end local v2           #s1:[Landroid/content/pm/Signature;
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    monitor-exit v5

    goto :goto_2

    .line 2047
    .end local v1           #obj:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2032
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_2
    :try_start_1
    monitor-exit v5

    goto :goto_2

    .line 2038
    .restart local v2       #s1:[Landroid/content/pm/Signature;
    :cond_3
    instance-of v6, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_4

    .line 2039
    move-object v0, v1

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .restart local v3       #s2:[Landroid/content/pm/Signature;
    goto :goto_1

    .line 2041
    .end local v3           #s2:[Landroid/content/pm/Signature;
    :cond_4
    monitor-exit v5

    goto :goto_2

    .line 2044
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method cleanupInstallFailedPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .parameter "ps"

    .prologue
    .line 1220
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up incompletely installed app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;I)I

    move-result v0

    .line 1222
    .local v0, retCode:I
    if-gez v0, :cond_2

    .line 1223
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove app data directory for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", retcode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 1229
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1230
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove old code file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 1234
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1235
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove old code file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->removePackageLPw(Ljava/lang/String;)I

    .line 1239
    return-void

    .line 1226
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManager;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManager;->removePackageForAllUsers(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 7191
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_USER_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7194
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$8;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 7218
    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 7487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 7489
    .local v1, uid:I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 7490
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 7491
    .local v0, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v1, :cond_2

    .line 7492
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 7495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerService;->getUidTargetSdkVersionLockedLPr(I)I

    move-result v2

    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 7497
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring clearPackagePreferredActivities() from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7499
    monitor-exit v3

    .line 7510
    :goto_0
    return-void

    .line 7501
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7506
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7507
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 7509
    :cond_3
    monitor-exit v3

    goto :goto_0

    .end local v0           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method clearPackagePreferredActivitiesLPw(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 7513
    const/4 v0, 0x0

    .line 7514
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7515
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredActivity;

    .line 7517
    .local v2, pa:Lcom/android/server/pm/PreferredActivity;
    iget-object v3, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v3, v3, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7518
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 7519
    const/4 v0, 0x1

    goto :goto_0

    .line 7522
    .end local v2           #pa:Lcom/android/server/pm/PreferredActivity;
    :cond_1
    return v0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 3
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 8653
    const-string v1, "Only the system can create users"

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 8656
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/pm/UserManager;->createUser(Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 8657
    .local v0, userInfo:Landroid/content/pm/UserInfo;
    return-object v0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "names"

    .prologue
    .line 1521
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/String;

    .line 1523
    .local v1, out:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1524
    :try_start_0
    array-length v3, p1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1525
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    aget-object v5, p1, v0

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1526
    .local v2, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    :goto_1
    aput-object v3, v1, v0

    .line 1524
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1526
    :cond_0
    aget-object v3, p1, v0

    goto :goto_1

    .line 1528
    .end local v2           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_1
    monitor-exit v4

    .line 1529
    return-object v1

    .line 1528
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 7263
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_CACHE_FILES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7266
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$9;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 7282
    return-void
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 6863
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6866
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$7;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService$7;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 6879
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 7832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 7834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8041
    :goto_0
    return-void

    .line 7842
    :cond_0
    new-instance v11, Lcom/android/server/pm/PackageManagerService$DumpState;

    invoke-direct {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;-><init>()V

    .line 7844
    .local v11, dumpState:Lcom/android/server/pm/PackageManagerService$DumpState;
    const/4 v6, 0x0

    .line 7846
    .local v6, packageName:Ljava/lang/String;
    const/16 v20, 0x0

    .line 7847
    .local v20, opti:I
    :cond_1
    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_2

    .line 7848
    aget-object v19, p3, v20

    .line 7849
    .local v19, opt:Ljava/lang/String;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_8

    .line 7880
    .end local v19           #opt:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    .line 7881
    aget-object v9, p3, v20

    .line 7882
    .local v9, cmd:Ljava/lang/String;
    add-int/lit8 v20, v20, 0x1

    .line 7884
    const-string v2, "android"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "."

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 7885
    :cond_3
    move-object v6, v9

    .line 7908
    .end local v9           #cmd:Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 7909
    const/16 v2, 0x100

    :try_start_0
    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v6, :cond_6

    .line 7910
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7911
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7912
    :cond_5
    const-string v2, "Verifiers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7913
    const-string v2, "  Required: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7915
    const-string v2, " (uid="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 7917
    const-string v2, ")"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7920
    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-nez v6, :cond_1d

    .line 7921
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7922
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7923
    :cond_7
    const-string v2, "Libraries:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 7925
    .local v17, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 7926
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 7927
    .local v18, name:Ljava/lang/String;
    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7928
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7929
    const-string v2, " -> "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 8040
    .end local v17           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7852
    .restart local v19       #opt:Ljava/lang/String;
    :cond_8
    add-int/lit8 v20, v20, 0x1

    .line 7853
    const-string v2, "-a"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7855
    const-string v2, "-h"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 7856
    const-string v2, "Package manager dump options:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7857
    const-string v2, "  [-h] [-f] [cmd] ..."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7858
    const-string v2, "    -f: print details of intent filters"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7859
    const-string v2, "    -h: print this help"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7860
    const-string v2, "  cmd may be one of:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7861
    const-string v2, "    l[ibraries]: list known shared libraries"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7862
    const-string v2, "    f[ibraries]: list device features"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7863
    const-string v2, "    r[esolvers]: dump intent resolvers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7864
    const-string v2, "    perm[issions]: dump permissions"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7865
    const-string v2, "    prov[iders]: dump content providers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7866
    const-string v2, "    p[ackages]: dump installed packages"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7867
    const-string v2, "    s[hared-users]: dump shared user IDs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7868
    const-string v2, "    m[essages]: print collected runtime messages"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7869
    const-string v2, "    v[erifiers]: print package verifier info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7870
    const-string v2, "    <package.name>: info about given package"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7872
    :cond_9
    const-string v2, "-f"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 7873
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setOptionEnabled(I)V

    goto/16 :goto_1

    .line 7875
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7886
    .end local v19           #opt:Ljava/lang/String;
    .restart local v9       #cmd:Ljava/lang/String;
    :cond_b
    const-string v2, "l"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "libraries"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 7887
    :cond_c
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setDump(I)V

    goto/16 :goto_2

    .line 7888
    :cond_d
    const-string v2, "f"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "features"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 7889
    :cond_e
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setDump(I)V

    goto/16 :goto_2

    .line 7890
    :cond_f
    const-string v2, "r"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "resolvers"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 7891
    :cond_10
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setDump(I)V

    goto/16 :goto_2

    .line 7892
    :cond_11
    const-string v2, "perm"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "permissions"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 7893
    :cond_12
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setDump(I)V

    goto/16 :goto_2

    .line 7894
    :cond_13
    const-string v2, "p"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "packages"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 7895
    :cond_14
    const/16 v2, 0x10

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setDump(I)V

    goto/16 :goto_2

    .line 7896
    :cond_15
    const-string v2, "s"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "shared-users"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7897
    :cond_16
    const/16 v2, 0x20

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setDump(I)V

    goto/16 :goto_2

    .line 7898
    :cond_17
    const-string v2, "prov"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "providers"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 7899
    :cond_18
    const/16 v2, 0x80

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setDump(I)V

    goto/16 :goto_2

    .line 7900
    :cond_19
    const-string v2, "m"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "messages"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 7901
    :cond_1a
    const/16 v2, 0x40

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setDump(I)V

    goto/16 :goto_2

    .line 7902
    :cond_1b
    const-string v2, "v"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "verifiers"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7903
    :cond_1c
    const/16 v2, 0x100

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setDump(I)V

    goto/16 :goto_2

    .line 7934
    .end local v9           #cmd:Ljava/lang/String;
    :cond_1d
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-nez v6, :cond_1f

    .line 7935
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 7936
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7937
    :cond_1e
    const-string v2, "Features:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 7939
    .restart local v17       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 7940
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 7941
    .restart local v18       #name:Ljava/lang/String;
    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7942
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 7946
    .end local v17           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #name:Ljava/lang/String;
    :cond_1f
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 7947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->getTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v4, "\nActivity Resolver Table:"

    :goto_5
    const-string v5, "  "

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageManagerService$DumpState;->isOptionEnabled(I)Z

    move-result v7

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 7950
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setTitlePrinted(Z)V

    .line 7952
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mReceivers:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->getTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v4, "\nReceiver Resolver Table:"

    :goto_6
    const-string v5, "  "

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageManagerService$DumpState;->isOptionEnabled(I)Z

    move-result v7

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 7955
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setTitlePrinted(Z)V

    .line 7957
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mServices:Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->getTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v4, "\nService Resolver Table:"

    :goto_7
    const-string v5, "  "

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageManagerService$DumpState;->isOptionEnabled(I)Z

    move-result v7

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 7960
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setTitlePrinted(Z)V

    .line 7962
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->getTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v4, "\nPreferred Activities:"

    :goto_8
    const-string v5, "  "

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageManagerService$DumpState;->isOptionEnabled(I)Z

    move-result v7

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 7966
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->setTitlePrinted(Z)V

    .line 7970
    :cond_23
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 7971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v6, v11}, Lcom/android/server/pm/Settings;->dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V

    .line 7974
    :cond_24
    const/16 v2, 0x80

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 7975
    const/16 v22, 0x0

    .line 7976
    .local v22, printedSomething:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_25
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageParser$Provider;

    .line 7977
    .local v21, p:Landroid/content/pm/PackageParser$Provider;
    if-eqz v6, :cond_26

    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 7980
    :cond_26
    if-nez v22, :cond_28

    .line 7981
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 7982
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7983
    :cond_27
    const-string v2, "Registered ContentProviders:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7984
    const/16 v22, 0x1

    .line 7986
    :cond_28
    const-string v2, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageParser$Provider;->getComponentShortName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7987
    const-string v2, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 7947
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v21           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v22           #printedSomething:Z
    :cond_29
    const-string v4, "Activity Resolver Table:"

    goto/16 :goto_5

    .line 7952
    :cond_2a
    const-string v4, "Receiver Resolver Table:"

    goto/16 :goto_6

    .line 7957
    :cond_2b
    const-string v4, "Service Resolver Table:"

    goto/16 :goto_7

    .line 7962
    :cond_2c
    const-string v4, "Preferred Activities:"

    goto/16 :goto_8

    .line 7989
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v22       #printedSomething:Z
    :cond_2d
    const/16 v22, 0x0

    .line 7990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2e
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 7991
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageParser$Provider;

    .line 7992
    .restart local v21       #p:Landroid/content/pm/PackageParser$Provider;
    if-eqz v6, :cond_2f

    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 7995
    :cond_2f
    if-nez v22, :cond_31

    .line 7996
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 7997
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7998
    :cond_30
    const-string v2, "ContentProvider Authorities:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7999
    const/16 v22, 0x1

    .line 8001
    :cond_31
    const-string v2, "  ["

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "]:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8002
    const-string v2, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 8006
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v21           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v22           #printedSomething:Z
    :cond_32
    const/16 v2, 0x10

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 8007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v6, v11}, Lcom/android/server/pm/Settings;->dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V

    .line 8010
    :cond_33
    const/16 v2, 0x20

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 8011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v6, v11}, Lcom/android/server/pm/Settings;->dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V

    .line 8014
    :cond_34
    const/16 v2, 0x40

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageManagerService$DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_36

    if-nez v6, :cond_36

    .line 8015
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 8016
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8017
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v11}, Lcom/android/server/pm/Settings;->dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService$DumpState;)V

    .line 8019
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8020
    const-string v2, "Package warning messages:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8021
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 8022
    .local v13, fname:Ljava/io/File;
    const/4 v15, 0x0

    .line 8024
    .local v15, in:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8025
    .end local v15           #in:Ljava/io/FileInputStream;
    .local v16, in:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 8026
    .local v8, avail:I
    new-array v10, v8, [B

    .line 8027
    .local v10, data:[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/io/FileInputStream;->read([B)I

    .line 8028
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 8032
    if-eqz v16, :cond_36

    .line 8034
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 8040
    .end local v8           #avail:I
    .end local v10           #data:[B
    .end local v13           #fname:Ljava/io/File;
    .end local v16           #in:Ljava/io/FileInputStream;
    :cond_36
    :goto_b
    :try_start_5
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 8032
    .restart local v13       #fname:Ljava/io/File;
    .restart local v15       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    :goto_c
    if-eqz v15, :cond_37

    .line 8034
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 8032
    :cond_37
    :goto_d
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 8029
    :catch_0
    move-exception v2

    .line 8032
    :goto_e
    if-eqz v15, :cond_36

    .line 8034
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    goto :goto_b

    .line 8035
    .end local v15           #in:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    goto :goto_b

    .line 8030
    .restart local v15       #in:Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 8032
    :goto_f
    if-eqz v15, :cond_36

    .line 8034
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_b

    .line 8035
    :catch_3
    move-exception v3

    goto :goto_d

    .line 8032
    .end local v15           #in:Ljava/io/FileInputStream;
    .restart local v16       #in:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v15, v16

    .end local v16           #in:Ljava/io/FileInputStream;
    .restart local v15       #in:Ljava/io/FileInputStream;
    goto :goto_c

    .line 8030
    .end local v15           #in:Ljava/io/FileInputStream;
    .restart local v16       #in:Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object/from16 v15, v16

    .end local v16           #in:Ljava/io/FileInputStream;
    .restart local v15       #in:Ljava/io/FileInputStream;
    goto :goto_f

    .line 8029
    .end local v15           #in:Ljava/io/FileInputStream;
    .restart local v16       #in:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object/from16 v15, v16

    .end local v16           #in:Ljava/io/FileInputStream;
    .restart local v15       #in:Ljava/io/FileInputStream;
    goto :goto_e
.end method

.method public enterSafeMode()V
    .locals 1

    .prologue
    .line 7717
    const-string v0, "Only the system can request entering safe mode"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 7719
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 7720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    .line 7722
    :cond_0
    return-void
.end method

.method findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 15
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 2169
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v12

    .line 2170
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2171
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 2174
    :cond_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v13, v11, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    const/high16 v11, 0x1

    and-int v11, v11, p3

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1, v11}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v9

    .line 2177
    .local v9, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 2181
    const/4 v7, 0x0

    .line 2187
    .local v7, match:I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    .line 2188
    .local v3, N:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v3, :cond_3

    .line 2189
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 2194
    .local v10, ri:Landroid/content/pm/ResolveInfo;
    iget v11, v10, Landroid/content/pm/ResolveInfo;->match:I

    if-le v11, v7, :cond_1

    .line 2195
    iget v7, v10, Landroid/content/pm/ResolveInfo;->match:I

    .line 2188
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2174
    .end local v3           #N:I
    .end local v6           #j:I
    .end local v7           #match:I
    .end local v9           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 2203
    .restart local v3       #N:I
    .restart local v6       #j:I
    .restart local v7       #match:I
    .restart local v9       #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_3
    const/high16 v11, 0xfff

    and-int/2addr v7, v11

    .line 2204
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 2205
    .local v2, M:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v2, :cond_9

    .line 2206
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PreferredActivity;

    .line 2207
    .local v8, pa:Lcom/android/server/pm/PreferredActivity;
    iget-object v11, v8, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget v11, v11, Lcom/android/server/PreferredComponent;->mMatch:I

    if-eq v11, v7, :cond_5

    .line 2205
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2210
    :cond_5
    iget-object v11, v8, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v11, v11, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move/from16 v0, p3

    invoke-virtual {p0, v11, v0}, Lcom/android/server/pm/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 2219
    .local v4, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_4

    .line 2220
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_4

    .line 2221
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 2222
    .restart local v10       #ri:Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 2220
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2226
    :cond_7
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2234
    iget-object v11, v8, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Lcom/android/server/PreferredComponent;->sameSet(Ljava/util/List;I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 2235
    const-string v11, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Result set changed, dropping preferred activity for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v11, v11, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v11, v8}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 2238
    const/4 v10, 0x0

    monitor-exit v12

    .line 2248
    .end local v2           #M:I
    .end local v3           #N:I
    .end local v4           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #match:I
    .end local v8           #pa:Lcom/android/server/pm/PreferredActivity;
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    :goto_4
    return-object v10

    .line 2242
    .restart local v2       #M:I
    .restart local v3       #N:I
    .restart local v4       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #match:I
    .restart local v8       #pa:Lcom/android/server/pm/PreferredActivity;
    .restart local v10       #ri:Landroid/content/pm/ResolveInfo;
    :cond_8
    monitor-exit v12

    goto :goto_4

    .line 2247
    .end local v2           #M:I
    .end local v3           #N:I
    .end local v4           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #match:I
    .end local v8           #pa:Lcom/android/server/pm/PreferredActivity;
    .end local v9           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .restart local v9       #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_9
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2248
    const/4 v10, 0x0

    goto :goto_4
.end method

.method public finishPackageInstall(I)V
    .locals 4
    .parameter "token"

    .prologue
    .line 5053
    const-string v1, "Only the system is allowed to finish installs"

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 5059
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5060
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5061
    return-void
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .locals 3
    .parameter "freeStorageSize"
    .parameter "pi"

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$2;-><init>(Lcom/android/server/pm/PackageManagerService;JLandroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1748
    return-void
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .parameter "freeStorageSize"
    .parameter "observer"

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$1;-><init>(Lcom/android/server/pm/PackageManagerService;JLandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1722
    return-void
.end method

.method generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .parameter "p"
    .parameter "flags"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    .line 1491
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_1

    move-object v0, p1

    move v2, p2

    move-wide v5, v3

    .line 1493
    invoke-static/range {v0 .. v6}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJ)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1500
    :cond_0
    :goto_0
    return-object v1

    .line 1495
    :cond_1
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1496
    .local v8, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_0

    .line 1499
    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_2

    iget-object v7, v8, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1500
    .local v7, gp:Lcom/android/server/pm/GrantedPermissions;
    :goto_1
    iget-object v1, v7, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-wide v3, v8, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    iget-wide v5, v8, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJ)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0

    .end local v7           #gp:Lcom/android/server/pm/GrantedPermissions;
    :cond_2
    move-object v7, v8

    .line 1499
    goto :goto_1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1751
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1752
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    #getter for: Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->access$700(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 1755
    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1756
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    monitor-exit v2

    .line 1762
    :goto_0
    return-object v1

    .line 1758
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1759
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    monitor-exit v2

    goto :goto_0

    .line 1761
    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #a:Landroid/content/pm/PackageParser$Activity;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1762
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 6
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1633
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 1634
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1635
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1637
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 1638
    .local v3, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v3, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1641
    .end local v0           #N:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v3           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1640
    .restart local v0       #N:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 7704
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 7705
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getApplicationEnabledSettingLPr(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 7706
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 1681
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1682
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1686
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 1688
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    monitor-exit v2

    .line 1697
    :goto_0
    return-object v1

    .line 1690
    :cond_0
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "system"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1691
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    monitor-exit v2

    goto :goto_0

    .line 1696
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1693
    .restart local v0       #p:Landroid/content/pm/PackageParser$Package;
    :cond_2
    and-int/lit16 v1, p2, 0x2000

    if-eqz v1, :cond_3

    .line 1694
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->generateApplicationInfoFromSettingsLPw(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 1696
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1697
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 2
    .parameter "componentName"

    .prologue
    .line 7711
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 7712
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getComponentEnabledSettingLPr(Landroid/content/ComponentName;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 7713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDataPathForUser(I)Ljava/io/File;
    .locals 3
    .parameter "userId"

    .prologue
    .line 3115
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mUserAppDataDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getInstallLocation()I
    .locals 3

    .prologue
    .line 8646
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInstalledApplications(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 13
    .parameter "flags"
    .parameter "lastRead"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 2596
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5}, Landroid/content/pm/ParceledListSlice;-><init>()V

    .line 2597
    .local v5, list:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    and-int/lit16 v10, p1, 0x2000

    if-eqz v10, :cond_2

    .line 2601
    .local v6, listUninstalled:Z
    :goto_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v11

    .line 2602
    if-eqz v6, :cond_3

    .line 2603
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 2608
    .local v4, keys:[Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2609
    invoke-static {v4, p2}, Lcom/android/server/pm/PackageManagerService;->getContinuationPoint([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2610
    .local v2, i:I
    array-length v0, v4

    .local v0, N:I
    move v3, v2

    .line 2612
    .end local v2           #i:I
    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 2613
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-object v8, v4, v3

    .line 2615
    .local v8, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2616
    .local v1, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_4

    .line 2617
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 2618
    .local v9, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_0

    .line 2619
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v10, p1}, Lcom/android/server/pm/PackageManagerService;->generateApplicationInfoFromSettingsLPw(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2628
    .end local v9           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_0
    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v5, v1}, Landroid/content/pm/ParceledListSlice;->append(Landroid/os/Parcelable;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2633
    .end local v1           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v8           #packageName:Ljava/lang/String;
    :goto_4
    if-ne v2, v0, :cond_1

    .line 2634
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/content/pm/ParceledListSlice;->setLastSlice(Z)V

    .line 2636
    :cond_1
    monitor-exit v11

    .line 2638
    return-object v5

    .line 2597
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #keys:[Ljava/lang/String;
    .end local v6           #listUninstalled:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 2605
    .restart local v6       #listUninstalled:Z
    :cond_3
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .restart local v4       #keys:[Ljava/lang/String;
    goto :goto_1

    .line 2622
    .restart local v0       #N:I
    .restart local v1       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #i:I
    .restart local v8       #packageName:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    .line 2623
    .local v7, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_0

    .line 2624
    invoke-static {v7, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    goto :goto_3

    .end local v7           #p:Landroid/content/pm/PackageParser$Package;
    :cond_5
    move v3, v2

    .line 2631
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 2636
    .end local v0           #N:I
    .end local v1           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:I
    .end local v4           #keys:[Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #keys:[Ljava/lang/String;
    :cond_6
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_4
.end method

.method public getInstalledPackages(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 13
    .parameter "flags"
    .parameter "lastRead"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2549
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4}, Landroid/content/pm/ParceledListSlice;-><init>()V

    .line 2550
    .local v4, list:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    and-int/lit16 v10, p1, 0x2000

    if-eqz v10, :cond_2

    .line 2554
    .local v5, listUninstalled:Z
    :goto_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v11

    .line 2555
    if-eqz v5, :cond_3

    .line 2556
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 2561
    .local v3, keys:[Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2562
    invoke-static {v3, p2}, Lcom/android/server/pm/PackageManagerService;->getContinuationPoint([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2563
    .local v1, i:I
    array-length v0, v3

    .local v0, N:I
    move v2, v1

    .line 2565
    .end local v1           #i:I
    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_6

    .line 2566
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-object v7, v3, v2

    .line 2568
    .local v7, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2569
    .local v8, pi:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_4

    .line 2570
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 2571
    .local v9, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_0

    .line 2572
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v10, p1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfoFromSettingsLPw(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 2581
    .end local v9           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_0
    :goto_3
    if-eqz v8, :cond_5

    invoke-direct {p0, v4, v8, p1}, Lcom/android/server/pm/PackageManagerService;->addPackageToSlice(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/PackageInfo;I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2586
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #pi:Landroid/content/pm/PackageInfo;
    :goto_4
    if-ne v1, v0, :cond_1

    .line 2587
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/content/pm/ParceledListSlice;->setLastSlice(Z)V

    .line 2589
    :cond_1
    monitor-exit v11

    .line 2591
    return-object v4

    .line 2550
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #keys:[Ljava/lang/String;
    .end local v5           #listUninstalled:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 2558
    .restart local v5       #listUninstalled:Z
    :cond_3
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .restart local v3       #keys:[Ljava/lang/String;
    goto :goto_1

    .line 2575
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v8       #pi:Landroid/content/pm/PackageInfo;
    :cond_4
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 2576
    .local v6, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_0

    .line 2577
    invoke-virtual {p0, v6, p1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    goto :goto_3

    .end local v6           #p:Landroid/content/pm/PackageParser$Package;
    :cond_5
    move v2, v1

    .line 2584
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 2589
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #keys:[Ljava/lang/String;
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #pi:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v3       #keys:[Ljava/lang/String;
    :cond_6
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_4
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 7697
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 7698
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 7699
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 3
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 2731
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 2732
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Instrumentation;

    .line 2733
    .local v0, i:Landroid/content/pm/PackageParser$Instrumentation;
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 2734
    .end local v0           #i:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 7
    .parameter "uid"

    .prologue
    .line 2098
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 2099
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v1

    .line 2100
    .local v1, obj:Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_0

    .line 2101
    move-object v0, v1

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    move-object v3, v0

    .line 2102
    .local v3, sus:Lcom/android/server/pm/SharedUserSetting;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v5

    .line 2108
    .end local v3           #sus:Lcom/android/server/pm/SharedUserSetting;
    :goto_0
    return-object v4

    .line 2103
    :cond_0
    instance-of v4, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v4, :cond_1

    .line 2104
    move-object v0, v1

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v2, v0

    .line 2105
    .local v2, ps:Lcom/android/server/pm/PackageSetting;
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    monitor-exit v5

    goto :goto_0

    .line 2107
    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #ps:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2108
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 5
    .parameter "packageName"

    .prologue
    .line 1562
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1563
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1566
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1567
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1568
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1569
    .local v2, suid:Lcom/android/server/pm/SharedUserSetting;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/pm/SharedUserSetting;->gids:[I

    :goto_0
    monitor-exit v4

    .line 1573
    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v2           #suid:Lcom/android/server/pm/SharedUserSetting;
    :goto_1
    return-object v3

    .line 1569
    .restart local v1       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v2       #suid:Lcom/android/server/pm/SharedUserSetting;
    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->gids:[I

    goto :goto_0

    .line 1571
    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v2           #suid:Lcom/android/server/pm/SharedUserSetting;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    const/4 v3, 0x0

    new-array v3, v3, [I

    goto :goto_1

    .line 1571
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 1506
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1507
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1510
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 1511
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    monitor-exit v2

    .line 1517
    :goto_0
    return-object v1

    .line 1513
    :cond_0
    and-int/lit16 v1, p2, 0x2000

    if-eqz v1, :cond_1

    .line 1514
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfoFromSettingsLPw(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 1516
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #p:Landroid/content/pm/PackageParser$Package;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1517
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 7313
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_PACKAGE_SIZE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7316
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$10;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 7331
    return-void
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, -0x1

    .line 1546
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1547
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1548
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 1549
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    monitor-exit v3

    .line 1556
    :goto_0
    return v2

    .line 1551
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1552
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_2

    .line 1553
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 1557
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1555
    .restart local v0       #p:Landroid/content/pm/PackageParser$Package;
    .restart local v1       #ps:Lcom/android/server/pm/PackageSetting;
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1556
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 12
    .parameter "uid"

    .prologue
    .line 2076
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    .line 2077
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, p1}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v5

    .line 2078
    .local v5, obj:Ljava/lang/Object;
    instance-of v9, v5, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v9, :cond_1

    .line 2079
    move-object v0, v5

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    move-object v8, v0

    .line 2080
    .local v8, sus:Lcom/android/server/pm/SharedUserSetting;
    iget-object v9, v8, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 2081
    .local v1, N:I
    new-array v7, v1, [Ljava/lang/String;

    .line 2082
    .local v7, res:[Ljava/lang/String;
    iget-object v9, v8, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2083
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .line 2084
    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2085
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    iget-object v9, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v9, v7, v3

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 2087
    :cond_0
    monitor-exit v10

    .line 2093
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v7           #res:[Ljava/lang/String;
    .end local v8           #sus:Lcom/android/server/pm/SharedUserSetting;
    :goto_1
    return-object v7

    .line 2088
    :cond_1
    instance-of v9, v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v9, :cond_2

    .line 2089
    move-object v0, v5

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v6, v0

    .line 2090
    .local v6, ps:Lcom/android/server/pm/PackageSetting;
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v11, v7, v9

    monitor-exit v10

    goto :goto_1

    .line 2092
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #ps:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v5       #obj:Ljava/lang/Object;
    :cond_2
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2093
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 1625
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1626
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 3
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 1591
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1592
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1593
    .local v0, p:Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_0

    .line 1594
    invoke-static {v0, p2}, Lcom/android/server/pm/PackageManagerService;->generatePermissionInfo(Lcom/android/server/pm/BasePermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    monitor-exit v2

    .line 1596
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1597
    .end local v0           #p:Lcom/android/server/pm/BasePermission;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPersistentApplications(I)Ljava/util/List;
    .locals 5
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2645
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 2646
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2647
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2648
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2649
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2652
    :cond_1
    invoke-static {v2, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2655
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2657
    return-object v0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 7528
    .local p1, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .line 7530
    .local v1, num:I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 7531
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7532
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7533
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredActivity;

    .line 7534
    .local v2, pa:Lcom/android/server/pm/PreferredActivity;
    if-eqz p3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v3, v3, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7536
    :cond_1
    if-eqz p1, :cond_2

    .line 7537
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7539
    :cond_2
    if-eqz p2, :cond_0

    .line 7540
    iget-object v3, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v3, v3, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7544
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v2           #pa:Lcom/android/server/pm/PreferredActivity;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7546
    return v1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1790
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 1794
    .local v0, p:Landroid/content/pm/PackageParser$Provider;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1795
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    monitor-exit v2

    .line 1798
    :goto_0
    return-object v1

    .line 1797
    :cond_0
    monitor-exit v2

    .line 1798
    const/4 v1, 0x0

    goto :goto_0

    .line 1797
    .end local v0           #p:Landroid/content/pm/PackageParser$Provider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1766
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1767
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReceivers:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    #getter for: Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->access$700(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 1770
    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1771
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    monitor-exit v2

    .line 1774
    :goto_0
    return-object v1

    .line 1773
    :cond_0
    monitor-exit v2

    .line 1774
    const/4 v1, 0x0

    goto :goto_0

    .line 1773
    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1778
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1779
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mServices:Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;

    #getter for: Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->access$800(Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    .line 1782
    .local v0, s:Landroid/content/pm/PackageParser$Service;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1783
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    monitor-exit v2

    .line 1786
    :goto_0
    return-object v1

    .line 1785
    :cond_0
    monitor-exit v2

    .line 1786
    const/4 v1, 0x0

    goto :goto_0

    .line 1785
    .end local v0           #s:Landroid/content/pm/PackageParser$Service;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 7

    .prologue
    .line 1817
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 1818
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1819
    .local v0, featSet:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 1820
    .local v3, size:I
    if-lez v3, :cond_0

    .line 1821
    add-int/lit8 v4, v3, 0x1

    new-array v1, v4, [Landroid/content/pm/FeatureInfo;

    .line 1822
    .local v1, features:[Landroid/content/pm/FeatureInfo;
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1823
    new-instance v2, Landroid/content/pm/FeatureInfo;

    invoke-direct {v2}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1824
    .local v2, fi:Landroid/content/pm/FeatureInfo;
    const-string v4, "ro.opengles.version"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 1826
    aput-object v2, v1, v3

    .line 1827
    monitor-exit v5

    .line 1830
    .end local v1           #features:[Landroid/content/pm/FeatureInfo;
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    :goto_0
    return-object v1

    .line 1829
    :cond_0
    monitor-exit v5

    .line 1830
    const/4 v1, 0x0

    goto :goto_0

    .line 1829
    .end local v0           #featSet:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/FeatureInfo;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1803
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1804
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1805
    .local v0, libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 1806
    .local v2, size:I
    if-lez v2, :cond_0

    .line 1807
    new-array v1, v2, [Ljava/lang/String;

    .line 1808
    .local v1, libs:[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1809
    monitor-exit v4

    .line 1812
    .end local v1           #libs:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1811
    :cond_0
    monitor-exit v4

    .line 1812
    const/4 v1, 0x0

    goto :goto_0

    .line 1811
    .end local v0           #libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 6
    .parameter "sharedUserName"

    .prologue
    const/4 v1, -0x1

    .line 2112
    if-nez p1, :cond_0

    .line 2121
    :goto_0
    return v1

    .line 2116
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 2117
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;IZ)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    .line 2118
    .local v0, suid:Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    .line 2119
    monitor-exit v2

    goto :goto_0

    .line 2122
    .end local v0           #suid:Lcom/android/server/pm/SharedUserSetting;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2121
    .restart local v0       #suid:Lcom/android/server/pm/SharedUserSetting;
    :cond_1
    :try_start_1
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8673
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const-string v2, "Only package verification agents can read the verifier device identity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8677
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 8678
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 8679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 1834
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1835
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1836
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasSystemUidErrors()Z
    .locals 1

    .prologue
    .line 7742
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mHasSystemUidErrors:Z

    return v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)V
    .locals 1
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 4911
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 4912
    return-void
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 7
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    const/4 v5, 0x0

    .line 4918
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;)V

    .line 4920
    return-void
.end method

.method public installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;)V
    .locals 10
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"
    .parameter "verificationURI"
    .parameter "manifestDigest"

    .prologue
    .line 4926
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 4932
    .local v9, uid:I
    const/16 v0, 0x7d0

    if-eq v9, v0, :cond_0

    if-nez v9, :cond_1

    .line 4936
    :cond_0
    or-int/lit8 v4, p3, 0x20

    .line 4941
    .local v4, filteredFlags:I
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 4942
    .local v8, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;)V

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4944
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4945
    return-void

    .line 4938
    .end local v4           #filteredFlags:I
    .end local v8           #msg:Landroid/os/Message;
    :cond_1
    and-int/lit8 v4, p3, -0x21

    .restart local v4       #filteredFlags:I
    goto :goto_0
.end method

.method public isFirstBoot()Z
    .locals 1

    .prologue
    .line 1166
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mRestoredSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProtectedBroadcast(Ljava/lang/String;)Z
    .locals 2
    .parameter "actionName"

    .prologue
    .line 2000
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 2001
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2002
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSafeMode()Z
    .locals 1

    .prologue
    .line 7738
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    return v0
.end method

.method public movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    .locals 13
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 8417
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MOVE_PACKAGE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8418
    const/4 v11, 0x1

    .line 8419
    .local v11, returnCode:I
    const/4 v7, 0x0

    .line 8420
    .local v7, currFlags:I
    const/4 v9, 0x0

    .line 8422
    .local v9, newFlags:I
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v12

    .line 8423
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Package;

    .line 8424
    .local v10, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v10, :cond_1

    .line 8425
    const/4 v11, -0x2

    .line 8464
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq v11, v1, :cond_9

    .line 8465
    new-instance v0, Lcom/android/server/pm/PackageManagerService$MoveParams;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$MoveParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v11}, Lcom/android/server/pm/PackageManagerService;->processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V

    .line 8475
    :goto_1
    monitor-exit v12

    .line 8476
    return-void

    .line 8428
    :cond_1
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8429
    const-string v1, "PackageManager"

    const-string v3, "Cannot move system application"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8430
    const/4 v11, -0x3

    goto :goto_0

    .line 8431
    :cond_2
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8432
    const-string v1, "PackageManager"

    const-string v3, "Cannot move forward locked app."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8433
    const/4 v11, -0x4

    goto :goto_0

    .line 8434
    :cond_3
    iget-boolean v1, v10, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    if-eqz v1, :cond_4

    .line 8435
    const-string v1, "PackageManager"

    const-string v3, "Attempt to move package which has pending operations"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8436
    const/4 v11, -0x7

    goto :goto_0

    .line 8439
    :cond_4
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_6

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_6

    .line 8441
    const-string v1, "PackageManager"

    const-string v3, "Ambigous flags specified for move location."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8442
    const/4 v11, -0x5

    .line 8453
    :cond_5
    :goto_2
    const/4 v1, 0x1

    if-ne v11, v1, :cond_0

    .line 8454
    const/4 v1, 0x1

    iput-boolean v1, v10, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    goto :goto_0

    .line 8475
    .end local v10           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8444
    .restart local v10       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_6
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_7

    const/16 v9, 0x8

    .line 8446
    :goto_3
    :try_start_1
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v7, 0x8

    .line 8448
    :goto_4
    if-ne v9, v7, :cond_5

    .line 8449
    const-string v1, "PackageManager"

    const-string v3, "No move required. Trying to move to same location"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8450
    const/4 v11, -0x5

    goto :goto_2

    .line 8444
    :cond_7
    const/16 v9, 0x10

    goto :goto_3

    .line 8446
    :cond_8
    const/16 v7, 0x10

    goto :goto_4

    .line 8467
    :cond_9
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 8468
    .local v8, msg:Landroid/os/Message;
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v4, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p0, v7, v1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v2

    .line 8470
    .local v2, srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    new-instance v0, Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    move v4, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$MoveParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;Ljava/lang/String;)V

    .line 8472
    .local v0, mp:Lcom/android/server/pm/PackageManagerService$MoveParams;
    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8473
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "lastPackage"

    .prologue
    const/4 v0, 0x0

    .line 4768
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 4769
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->isExternalMediaAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4773
    monitor-exit v1

    .line 4778
    :goto_0
    return-object v0

    .line 4775
    :cond_0
    if-eqz p1, :cond_1

    .line 4776
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4778
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 4780
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1210
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_0

    .line 1213
    const-string v1, "PackageManager"

    const-string v2, "Package Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    :cond_0
    throw v0
.end method

.method public performBootDexOpt()V
    .locals 10

    .prologue
    .line 3007
    const/4 v2, 0x0

    .line 3008
    .local v2, pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 3009
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDeferredDexOpt:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3010
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDeferredDexOpt:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3011
    .end local v2           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    .local v3, pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDeferredDexOpt:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v3

    .line 3013
    .end local v3           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v2       #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    :cond_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3014
    if-eqz v2, :cond_3

    .line 3015
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3016
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3018
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10403d5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v9, v0, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3025
    :cond_1
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 3026
    .local v1, p:Landroid/content/pm/PackageParser$Package;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3027
    :try_start_4
    iget-boolean v4, v1, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z

    if-nez v4, :cond_2

    .line 3028
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v1, v4, v6}, Lcom/android/server/pm/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;ZZ)I

    .line 3030
    :cond_2
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3013
    .end local v0           #i:I
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 3030
    .restart local v0       #i:I
    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 3033
    .end local v0           #i:I
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :cond_3
    return-void

    .line 3022
    .restart local v0       #i:I
    :catch_0
    move-exception v4

    goto :goto_1

    .line 3013
    .end local v0           #i:I
    .end local v2           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v3       #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v2       #pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    goto :goto_2
.end method

.method public performDexOpt(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3036
    const-string v3, "Only the system can request dexopt be performed"

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 3038
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mNoDexOpt:Z

    if-nez v3, :cond_0

    .line 3050
    :goto_0
    return v1

    .line 3043
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 3044
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 3045
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    iget-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z

    if-eqz v4, :cond_2

    .line 3046
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 3048
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #p:Landroid/content/pm/PackageParser$Package;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3049
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3050
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/pm/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;ZZ)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 3051
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .parameter "processName"
    .parameter "uid"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2699
    const/4 v0, 0x0

    .line 2702
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 2703
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    move-object v1, v0

    .line 2704
    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2705
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 2706
    .local v3, p:Landroid/content/pm/PackageParser$Provider;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v4, :cond_5

    if-eqz p1, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p2, :cond_5

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v4, v6, p3}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 2713
    :cond_1
    if-nez v1, :cond_4

    .line 2714
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2716
    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_1
    :try_start_2
    invoke-static {v3, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v1, v0

    .line 2718
    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_0

    .line 2719
    .end local v3           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2721
    if-eqz v1, :cond_3

    .line 2722
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2725
    :cond_3
    return-object v1

    .line 2719
    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :catchall_0
    move-exception v4

    :goto_3
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_3

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v3       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_4
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_1

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :cond_5
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_2
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .parameter "targetPackage"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2743
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/InstrumentationInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 2744
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2745
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2746
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Instrumentation;

    .line 2747
    .local v2, p:Landroid/content/pm/PackageParser$Instrumentation;
    if-eqz p1, :cond_1

    iget-object v3, v2, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v3, v3, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2749
    :cond_1
    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2753
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2755
    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2253
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2254
    .local v1, comp:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 2255
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2256
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 2257
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2260
    :cond_0
    if-eqz v1, :cond_2

    .line 2261
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2262
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2263
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    .line 2264
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2265
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2266
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2282
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    return-object v2

    .line 2272
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 2273
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 2274
    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 2275
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    monitor-exit v7

    goto :goto_0

    .line 2283
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2277
    .restart local v4       #pkgName:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 2278
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_4

    .line 2279
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, p2, p3, v8}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    monitor-exit v7

    goto :goto_0

    .line 2282
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 22
    .parameter "caller"
    .parameter "specifics"
    .parameter "specificTypes"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2289
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 2291
    .local v13, resultsAction:Ljava/lang/String;
    or-int/lit8 v20, p6, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 2298
    .local v12, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v18, 0x0

    .line 2309
    .local v18, specificsPos:I
    if-eqz p2, :cond_d

    .line 2310
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_d

    .line 2311
    aget-object v17, p2, v9

    .line 2312
    .local v17, sintent:Landroid/content/Intent;
    if-nez v17, :cond_1

    .line 2310
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2320
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2321
    .local v5, action:Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2324
    const/4 v5, 0x0

    .line 2327
    :cond_2
    const/4 v14, 0x0

    .line 2328
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 2330
    .local v6, ai:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2331
    .local v8, comp:Landroid/content/ComponentName;
    if-nez v8, :cond_a

    .line 2332
    if-eqz p3, :cond_9

    aget-object v20, p3, v9

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 2336
    if-eqz v14, :cond_0

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_3

    .line 2342
    :cond_3
    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2343
    new-instance v8, Landroid/content/ComponentName;

    .end local v8           #comp:Landroid/content/ComponentName;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    .restart local v8       #comp:Landroid/content/ComponentName;
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2357
    .local v4, N:I
    move/from16 v11, v18

    .local v11, j:I
    :goto_3
    if-ge v11, v4, :cond_b

    .line 2358
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 2359
    .local v19, sri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    :cond_5
    if-eqz v5, :cond_8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 2363
    :cond_6
    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2367
    if-nez v14, :cond_7

    .line 2368
    move-object/from16 v14, v19

    .line 2370
    :cond_7
    add-int/lit8 v11, v11, -0x1

    .line 2371
    add-int/lit8 v4, v4, -0x1

    .line 2357
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2332
    .end local v4           #N:I
    .end local v11           #j:I
    .end local v19           #sri:Landroid/content/pm/ResolveInfo;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 2346
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2347
    if-nez v6, :cond_4

    goto/16 :goto_1

    .line 2376
    .restart local v4       #N:I
    .restart local v11       #j:I
    :cond_b
    if-nez v14, :cond_c

    .line 2377
    new-instance v14, Landroid/content/pm/ResolveInfo;

    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    invoke-direct {v14}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2378
    .restart local v14       #ri:Landroid/content/pm/ResolveInfo;
    iput-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2380
    :cond_c
    move/from16 v0, v18

    invoke-interface {v12, v0, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2381
    iput v9, v14, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 2382
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 2388
    .end local v4           #N:I
    .end local v5           #action:Ljava/lang/String;
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v8           #comp:Landroid/content/ComponentName;
    .end local v9           #i:I
    .end local v11           #j:I
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    .end local v17           #sintent:Landroid/content/Intent;
    :cond_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2389
    .restart local v4       #N:I
    move/from16 v9, v18

    .restart local v9       #i:I
    :goto_4
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ge v9, v0, :cond_14

    .line 2390
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 2391
    .local v15, rii:Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    .line 2389
    :cond_e
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2397
    :cond_f
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2398
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v10, :cond_e

    .line 2401
    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 2402
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2403
    .restart local v5       #action:Ljava/lang/String;
    if-eqz v13, :cond_11

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 2408
    :cond_11
    add-int/lit8 v11, v9, 0x1

    .restart local v11       #j:I
    :goto_6
    if-ge v11, v4, :cond_10

    .line 2409
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 2410
    .local v16, rij:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 2411
    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2415
    add-int/lit8 v11, v11, -0x1

    .line 2416
    add-int/lit8 v4, v4, -0x1

    .line 2408
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2423
    .end local v5           #action:Ljava/lang/String;
    .end local v11           #j:I
    .end local v16           #rij:Landroid/content/pm/ResolveInfo;
    :cond_13
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_e

    .line 2424
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    goto :goto_5

    .line 2429
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15           #rii:Landroid/content/pm/ResolveInfo;
    :cond_14
    if-eqz p1, :cond_15

    .line 2430
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2431
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v4, :cond_15

    .line 2432
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2433
    .local v7, ainfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 2435
    invoke-interface {v12, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2444
    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_15
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_17

    .line 2445
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2446
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v4, :cond_17

    .line 2447
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 2446
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2431
    .restart local v7       #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2452
    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_17
    return-object v12
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2456
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2457
    .local v1, comp:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 2458
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2459
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 2460
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2463
    :cond_0
    if-eqz v1, :cond_2

    .line 2464
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2465
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/PackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2466
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    .line 2467
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2468
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2469
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2484
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    return-object v2

    .line 2475
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 2476
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 2477
    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 2478
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mReceivers:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    monitor-exit v7

    goto :goto_0

    .line 2485
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2480
    .restart local v4       #pkgName:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 2481
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_4

    .line 2482
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mReceivers:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, p2, p3, v8}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    monitor-exit v7

    goto :goto_0

    .line 2484
    :cond_4
    const/4 v2, 0x0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2501
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2502
    .local v0, comp:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 2503
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2504
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 2505
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2508
    :cond_0
    if-eqz v0, :cond_2

    .line 2509
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2510
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/PackageManagerService;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 2511
    .local v5, si:Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_1

    .line 2512
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2513
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2514
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2529
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    .end local v5           #si:Landroid/content/pm/ServiceInfo;
    :cond_1
    :goto_0
    return-object v1

    .line 2520
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 2521
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 2522
    .local v3, pkgName:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 2523
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mServices:Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    monitor-exit v7

    goto :goto_0

    .line 2530
    .end local v3           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2525
    .restart local v3       #pkgName:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2526
    .local v2, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_4

    .line 2527
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mServices:Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;

    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, p2, p3, v8}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    monitor-exit v7

    goto :goto_0

    .line 2529
    :cond_4
    const/4 v1, 0x0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .parameter "group"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1602
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1603
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1604
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/BasePermission;

    .line 1605
    .local v2, p:Lcom/android/server/pm/BasePermission;
    if-nez p1, :cond_2

    .line 1606
    iget-object v3, v2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1607
    :cond_1
    invoke-static {v2, p2}, Lcom/android/server/pm/PackageManagerService;->generatePermissionInfo(Lcom/android/server/pm/BasePermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1620
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .end local v2           #p:Lcom/android/server/pm/BasePermission;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1610
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .restart local v2       #p:Lcom/android/server/pm/BasePermission;
    :cond_2
    :try_start_1
    iget-object v3, v2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1611
    iget-object v3, v2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v3, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1616
    .end local v2           #p:Lcom/android/server/pm/BasePermission;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1617
    monitor-exit v4

    .line 1619
    .end local v1           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :goto_1
    return-object v1

    .restart local v1       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .end local v1           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .restart local v1       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2679
    .local p1, outNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, outInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 2680
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2683
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2684
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2685
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 2687
    .local v2, p:Landroid/content/pm/PackageParser$Provider;
    iget-boolean v3, v2, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 2690
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2691
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2694
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Provider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2695
    return-void
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .parameter "parser"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 1402
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 1404
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1405
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_0

    .line 1406
    new-instance v0, Lcom/android/server/pm/BasePermission;

    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    invoke-direct {v0, p2, v11, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1407
    .restart local v0       #bp:Lcom/android/server/pm/BasePermission;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1412
    .local v3, outerDepth:I
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v9, :cond_5

    if-ne v5, v10, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_5

    .line 1414
    :cond_2
    if-eq v5, v10, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 1419
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1420
    .local v4, tagName:Ljava/lang/String;
    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1421
    const-string v6, "gid"

    invoke-interface {p1, v11, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1422
    .local v2, gidStr:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1423
    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    .line 1424
    .local v1, gid:I
    iget-object v6, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v1}, Lcom/android/server/pm/PackageManagerService;->appendInt([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    .line 1430
    .end local v1           #gid:I
    .end local v2           #gidStr:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1426
    .restart local v2       #gidStr:Ljava/lang/String;
    :cond_4
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<group> without gid at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1432
    .end local v2           #gidStr:Ljava/lang/String;
    .end local v4           #tagName:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method readPermissions()V
    .locals 9

    .prologue
    .line 1243
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1244
    .local v4, libraryDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1245
    :cond_0
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :goto_0
    return-void

    .line 1248
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1249
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1254
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 1256
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1254
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1260
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1261
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-xml file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " directory, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1264
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1265
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permissions library file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1269
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    goto :goto_2

    .line 1273
    .end local v1           #f:Ljava/io/File;
    :cond_6
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1275
    .local v5, permFile:Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    goto/16 :goto_0
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 7384
    const-string v0, "PackageManager"

    const-string v1, "removePackageFromPreferred: this is now a no-op"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7385
    return-void
.end method

.method removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 14
    .parameter "pkg"
    .parameter "chatty"

    .prologue
    .line 3953
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    .line 3954
    :try_start_0
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;)Z

    .line 3956
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v11, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3957
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 3958
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    iget-object v11, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3961
    :cond_0
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3962
    .local v0, N:I
    const/4 v7, 0x0

    .line 3964
    .local v7, r:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 3965
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Provider;

    .line 3966
    .local v6, p:Landroid/content/pm/PackageParser$Provider;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3968
    iget-object v9, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 3964
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3976
    :cond_2
    iget-object v9, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3977
    .local v5, names:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    array-length v9, v5

    if-ge v4, v9, :cond_4

    .line 3978
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    aget-object v11, v5, v4

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_3

    .line 3979
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    aget-object v11, v5, v4

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3977
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3988
    :cond_4
    if-eqz p2, :cond_1

    .line 3989
    if-nez v7, :cond_5

    .line 3990
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #r:Ljava/lang/StringBuilder;
    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3994
    .restart local v7       #r:Ljava/lang/StringBuilder;
    :goto_3
    iget-object v9, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4096
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #names:[Ljava/lang/String;
    .end local v6           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v7           #r:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 3992
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #j:I
    .restart local v5       #names:[Ljava/lang/String;
    .restart local v6       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v7       #r:Ljava/lang/StringBuilder;
    :cond_5
    const/16 v9, 0x20

    :try_start_1
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3997
    .end local v4           #j:I
    .end local v5           #names:[Ljava/lang/String;
    .end local v6           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_6
    if-eqz v7, :cond_7

    .line 4001
    :cond_7
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4002
    const/4 v7, 0x0

    .line 4003
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_a

    .line 4004
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Service;

    .line 4005
    .local v8, s:Landroid/content/pm/PackageParser$Service;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mServices:Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->removeService(Landroid/content/pm/PackageParser$Service;)V

    .line 4006
    if-eqz p2, :cond_8

    .line 4007
    if-nez v7, :cond_9

    .line 4008
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #r:Ljava/lang/StringBuilder;
    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4012
    .restart local v7       #r:Ljava/lang/StringBuilder;
    :goto_5
    iget-object v9, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4003
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4010
    :cond_9
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4015
    .end local v8           #s:Landroid/content/pm/PackageParser$Service;
    :cond_a
    if-eqz v7, :cond_b

    .line 4019
    :cond_b
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4020
    const/4 v7, 0x0

    .line 4021
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_e

    .line 4022
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 4023
    .local v1, a:Landroid/content/pm/PackageParser$Activity;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mReceivers:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    const-string v11, "receiver"

    invoke-virtual {v9, v1, v11}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 4024
    if-eqz p2, :cond_c

    .line 4025
    if-nez v7, :cond_d

    .line 4026
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #r:Ljava/lang/StringBuilder;
    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4030
    .restart local v7       #r:Ljava/lang/StringBuilder;
    :goto_7
    iget-object v9, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4021
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4028
    :cond_d
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 4033
    .end local v1           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_e
    if-eqz v7, :cond_f

    .line 4037
    :cond_f
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4038
    const/4 v7, 0x0

    .line 4039
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_12

    .line 4040
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 4041
    .restart local v1       #a:Landroid/content/pm/PackageParser$Activity;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    const-string v11, "activity"

    invoke-virtual {v9, v1, v11}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 4042
    if-eqz p2, :cond_10

    .line 4043
    if-nez v7, :cond_11

    .line 4044
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #r:Ljava/lang/StringBuilder;
    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4048
    .restart local v7       #r:Ljava/lang/StringBuilder;
    :goto_9
    iget-object v9, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4039
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 4046
    :cond_11
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 4051
    .end local v1           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_12
    if-eqz v7, :cond_13

    .line 4055
    :cond_13
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4056
    const/4 v7, 0x0

    .line 4057
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_17

    .line 4058
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Permission;

    .line 4059
    .local v6, p:Landroid/content/pm/PackageParser$Permission;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v11, v6, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/BasePermission;

    .line 4060
    .local v2, bp:Lcom/android/server/pm/BasePermission;
    if-nez v2, :cond_14

    .line 4061
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    iget-object v11, v6, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #bp:Lcom/android/server/pm/BasePermission;
    check-cast v2, Lcom/android/server/pm/BasePermission;

    .line 4063
    .restart local v2       #bp:Lcom/android/server/pm/BasePermission;
    :cond_14
    if-eqz v2, :cond_15

    iget-object v9, v2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-ne v9, v6, :cond_15

    .line 4064
    const/4 v9, 0x0

    iput-object v9, v2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 4065
    if-eqz p2, :cond_15

    .line 4066
    if-nez v7, :cond_16

    .line 4067
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #r:Ljava/lang/StringBuilder;
    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4071
    .restart local v7       #r:Ljava/lang/StringBuilder;
    :goto_b
    iget-object v9, v6, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 4069
    :cond_16
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 4075
    .end local v2           #bp:Lcom/android/server/pm/BasePermission;
    .end local v6           #p:Landroid/content/pm/PackageParser$Permission;
    :cond_17
    if-eqz v7, :cond_18

    .line 4079
    :cond_18
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4080
    const/4 v7, 0x0

    .line 4081
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_1b

    .line 4082
    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    .line 4083
    .local v1, a:Landroid/content/pm/PackageParser$Instrumentation;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4084
    if-eqz p2, :cond_19

    .line 4085
    if-nez v7, :cond_1a

    .line 4086
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #r:Ljava/lang/StringBuilder;
    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4090
    .restart local v7       #r:Ljava/lang/StringBuilder;
    :goto_d
    iget-object v9, v1, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v9, v9, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4081
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4088
    :cond_1a
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 4093
    .end local v1           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_1b
    if-eqz v7, :cond_1c

    .line 4096
    :cond_1c
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4097
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 1984
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1985
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/pm/BasePermission;

    .line 1986
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1987
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_1

    .line 1988
    iget v1, v0, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 1989
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1996
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1993
    .restart local v0       #bp:Lcom/android/server/pm/BasePermission;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1996
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1997
    return-void
.end method

.method public removeUser(I)Z
    .locals 1
    .parameter "userId"

    .prologue
    .line 8662
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 8664
    if-nez p1, :cond_0

    .line 8665
    const/4 v0, 0x0

    .line 8668
    :goto_0
    return v0

    .line 8667
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManager;->removeUser(I)V

    .line 8668
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 8
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    .line 7441
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 7442
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 action."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7445
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 7446
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 category."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7449
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    if-eqz v4, :cond_3

    .line 7453
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have no data authorities, paths, schemes or types."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7457
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 7458
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v4, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 7461
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerService;->getUidTargetSdkVersionLockedLPr(I)I

    move-result v4

    const/16 v6, 0x8

    if-ge v4, v6, :cond_4

    .line 7463
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring replacePreferredActivity() from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7465
    monitor-exit v5

    .line 7484
    :goto_0
    return-void

    .line 7467
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7471
    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7472
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 7473
    .local v0, action:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    .line 7474
    .local v1, category:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 7475
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredActivity;

    .line 7476
    .local v3, pa:Lcom/android/server/pm/PreferredActivity;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PreferredActivity;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PreferredActivity;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7477
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 7478
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed preferred activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v7, v7, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7479
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v6, 0x4

    const-string v7, "PackageManager"

    invoke-direct {v4, v6, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {p1, v4, v6}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1

    .line 7483
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #category:Ljava/lang/String;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v3           #pa:Lcom/android/server/pm/PreferredActivity;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 7482
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #category:Ljava/lang/String;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_7
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 7483
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 2662
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 2663
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 2664
    .local v0, provider:Landroid/content/pm/PackageParser$Provider;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2670
    .end local v0           #provider:Landroid/content/pm/PackageParser$Provider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    .line 2127
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2128
    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 3
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    .line 2489
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2490
    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .line 2491
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2494
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2497
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method schedulePackageCleaning(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 4784
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4785
    return-void
.end method

.method scheduleWriteSettingsLocked()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 810
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 813
    :cond_0
    return-void
.end method

.method scheduleWriteStoppedPackagesLocked()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    .line 816
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 819
    :cond_0
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 1
    .parameter "appPackageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 7551
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setAccessControl(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7559
    return-void

    .line 7558
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    .line 7552
    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 2
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 7556
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    .line 7558
    return-void
.end method

.method public setInstallLocation(I)Z
    .locals 4
    .parameter "loc"

    .prologue
    const/4 v0, 0x1

    .line 8631
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8633
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getInstallLocation()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 8642
    :goto_0
    return v0

    .line 8636
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 8638
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 8642
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "targetPackage"
    .parameter "installerPackageName"

    .prologue
    .line 5086
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 5088
    .local v5, uid:I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 5089
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 5090
    .local v4, targetPackageSetting:Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_0

    .line 5091
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown target package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5152
    .end local v4           #targetPackageSetting:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5095
    .restart local v4       #targetPackageSetting:Lcom/android/server/pm/PackageSetting;
    :cond_0
    if-eqz p2, :cond_1

    .line 5096
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5097
    .local v1, installerPackageSetting:Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_2

    .line 5098
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown installer package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5102
    .end local v1           #installerPackageSetting:Lcom/android/server/pm/PackageSetting;
    :cond_1
    const/4 v1, 0x0

    .line 5106
    .restart local v1       #installerPackageSetting:Lcom/android/server/pm/PackageSetting;
    :cond_2
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v2

    .line 5107
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 5108
    instance-of v6, v2, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_3

    .line 5109
    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .end local v2           #obj:Ljava/lang/Object;
    iget-object v6, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v6, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 5121
    .local v0, callerSignature:[Landroid/content/pm/Signature;
    :goto_0
    if-eqz v1, :cond_6

    .line 5122
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v6, v6, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v6

    if-eqz v6, :cond_6

    .line 5125
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caller does not have same cert as new installer package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5110
    .end local v0           #callerSignature:[Landroid/content/pm/Signature;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_3
    instance-of v6, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_4

    .line 5111
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .end local v2           #obj:Ljava/lang/Object;
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v6, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .restart local v0       #callerSignature:[Landroid/content/pm/Signature;
    goto :goto_0

    .line 5113
    .end local v0           #callerSignature:[Landroid/content/pm/Signature;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_4
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad object "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5116
    :cond_5
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown calling uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5133
    .end local v2           #obj:Ljava/lang/Object;
    .restart local v0       #callerSignature:[Landroid/content/pm/Signature;
    :cond_6
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 5134
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5138
    .local v3, setting:Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_7

    .line 5139
    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v6, v6, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v6

    if-eqz v6, :cond_7

    .line 5142
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caller does not have same cert as old installer package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5150
    .end local v3           #setting:Lcom/android/server/pm/PackageSetting;
    :cond_7
    iput-object p2, v4, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    .line 5151
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 5152
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5153
    return-void
.end method

.method public setPackageStoppedState(Ljava/lang/String;Z)V
    .locals 5
    .parameter "packageName"
    .parameter "stopped"

    .prologue
    .line 7682
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7683
    .local v2, uid:I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 7685
    .local v1, permission:I
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 7687
    .local v0, allowedByPermission:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 7688
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1, p2, v0, v2}, Lcom/android/server/pm/Settings;->setPackageStoppedStateLPw(Ljava/lang/String;ZZI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7690
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteStoppedPackagesLocked()V

    .line 7692
    :cond_0
    monitor-exit v4

    .line 7693
    return-void

    .line 7685
    .end local v0           #allowedByPermission:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 7692
    .restart local v0       #allowedByPermission:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method startCleaningPackages()V
    .locals 4

    .prologue
    .line 4789
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 4790
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->isExternalMediaAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4791
    monitor-exit v3

    .line 4806
    :cond_0
    :goto_0
    return-void

    .line 4793
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 4794
    monitor-exit v3

    goto :goto_0

    .line 4796
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4797
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.pm.CLEAN_EXTERNAL_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4798
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4799
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4800
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 4802
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v0, v2, v1, v3}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4803
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7725
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    .line 7728
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "compatibility_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 7731
    .local v0, compatibilityModeEnabled:Z
    :goto_0
    invoke-static {v0}, Landroid/content/pm/PackageParser;->setCompatibilityModeEnabled(Z)V

    .line 7735
    return-void

    .line 7728
    .end local v0           #compatibilityModeEnabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateExternalMediaStatus(ZZ)V
    .locals 7
    .parameter "mediaStatus"
    .parameter "reportStatus"

    .prologue
    .line 8102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 8103
    .local v0, callingUid:I
    if-eqz v0, :cond_0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    .line 8104
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Media status can only be updated by the system"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8108
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 8109
    :try_start_0
    const-string v4, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating external media status from "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mMediaMounted:Z

    if-eqz v2, :cond_1

    const-string v2, "mounted"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_2

    const-string v2, "mounted"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8115
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mMediaMounted:Z

    if-ne p1, v2, :cond_4

    .line 8116
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v5, 0xc

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    :goto_2
    const/4 v6, -0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 8118
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8119
    monitor-exit v3

    .line 8132
    .end local v1           #msg:Landroid/os/Message;
    :goto_3
    return-void

    .line 8109
    :cond_1
    const-string v2, "unmounted"

    goto :goto_0

    :cond_2
    const-string v2, "unmounted"

    goto :goto_1

    .line 8116
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 8121
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService;->mMediaMounted:Z

    .line 8122
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8125
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$11;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$11;-><init>(Lcom/android/server/pm/PackageManagerService;ZZ)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 8122
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public verifyPendingInstall(II)V
    .locals 4
    .parameter "id"
    .parameter "verificationCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4949
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4950
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 4952
    .local v1, response:Lcom/android/server/pm/PackageVerificationResponse;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4953
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4954
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4955
    return-void
.end method

.method private addPackageToSlice(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/PackageInfo;I)Z
    .locals 1
    .parameter
    .parameter "pi"
    .parameter "flags"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    const/high16 v0, 0x2

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/ParceledListSlice;->append(Landroid/os/Parcelable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/pm/ParceledListSlice;->append(Landroid/os/Parcelable;)Z

    move-result v0

    goto :goto_0
.end method
