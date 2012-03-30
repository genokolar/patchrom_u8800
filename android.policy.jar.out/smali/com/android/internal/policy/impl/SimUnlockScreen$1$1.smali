.class Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x10402ec

    const/4 v10, 0x0

    .line 237
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_0

    .line 238
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->hide()V

    .line 240
    :cond_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$success:Z

    if-eqz v7, :cond_1

    .line 242
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 243
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x10900ab

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v9, 0x1020320

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v3, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 246
    .local v4, layout:Landroid/view/View;
    const v7, 0x102000b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 247
    .local v5, text:Landroid/widget/TextView;
    const v7, 0x10402ee

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 249
    new-instance v6, Landroid/widget/Toast;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 250
    .local v6, toast:Landroid/widget/Toast;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 251
    const/16 v7, 0x10

    invoke-virtual {v6, v7, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 252
    invoke-virtual {v6, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 253
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 257
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 258
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 277
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #text:Landroid/widget/TextView;
    .end local v6           #toast:Landroid/widget/Toast;
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 278
    return-void

    .line 262
    :cond_1
    :try_start_0
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I

    move-result v0

    .line 264
    .local v0, attemptsRemaining:I
    if-ltz v0, :cond_2

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v8, v8, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10402ec

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v8, v8, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10400d9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, displayMessage:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v0           #attemptsRemaining:I
    .end local v1           #displayMessage:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iput v10, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 269
    .restart local v0       #attemptsRemaining:I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x10402ec

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 271
    .end local v0           #attemptsRemaining:I
    :catch_0
    move-exception v2

    .line 272
    .local v2, ex:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
