.class public Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneSateReceiver.java"


# static fields
.field private static final PHONE_STATE_INTENTS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mIsActive:Z

.field private mManager:Landroid/telephony/TelephonyManager;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    const-string v2, "android.intent.action.PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    const-string v2, "android.intent.action.PHONE_STATE_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 33
    const-string v2, "android.intent.action.PHONE_STATE2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 34
    const-string v2, "android.intent.action.DUAL_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 35
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->PHONE_STATE_INTENTS:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mManager:Landroid/telephony/TelephonyManager;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mIsActive:Z

    .line 46
    new-instance v0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver$1;-><init>(Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mIsActive:Z

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mIsActive:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, extras:Landroid/os/Bundle;
    sget-object v2, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-eqz v0, :cond_1

    .line 77
    const-string v2, "state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, state:Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mIsActive:Z

    .line 86
    .end local v1           #state:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 81
    .restart local v1       #state:Ljava/lang/String;
    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 82
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mIsActive:Z

    goto :goto_0
.end method

.method public register(Landroid/app/Service;)V
    .locals 5
    .parameter "owner"

    .prologue
    .line 89
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->PHONE_STATE_INTENTS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 93
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 94
    invoke-virtual {p1, p0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v2, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 97
    return-void

    .line 90
    :cond_0
    aget-object v0, v3, v2

    .line 91
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public unregister(Landroid/app/Service;)V
    .locals 3
    .parameter "owner"

    .prologue
    .line 100
    invoke-virtual {p1, p0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 102
    return-void
.end method
