.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# static fields
.field public static sSubscription:I


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 122
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
    .locals 7
    .parameter "intent"

    .prologue
    .line 126
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_0
    const-string v4, "subscription"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->sSubscription:I

    .line 130
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SIM_STATE_CHANGED intent received on sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->sSubscription:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v4, "ss"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, stateExtra:Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, absentReason:Ljava/lang/String;
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    .line 161
    .end local v0           #absentReason:Ljava/lang/String;
    .local v2, state:Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v4, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;)V

    return-object v4

    .line 140
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 142
    .end local v0           #absentReason:Ljava/lang/String;
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 144
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 145
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, lockedReason:Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 148
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 149
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_4
    const-string v4, "PUK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 150
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 151
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    const-string v4, "PERSO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 152
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 154
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 156
    .end local v1           #lockedReason:Ljava/lang/String;
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    const-string v4, "CARD_IO_ERROR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 157
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 159
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_8
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->getIccCardState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIccCardState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$State;
    .locals 2
    .parameter "stateExtra"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const-string v1, "IMSI"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .local v0, state:Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    return-object v0

    .end local v0           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_0
    const-string v1, "LOADED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v0       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .end local v0           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v0       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0
.end method
