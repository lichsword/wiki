.class Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SsoLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/ssologin/SsoLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologin/SsoLogin;


# direct methods
.method private constructor <init>(Lcom/taobao/android/ssologin/SsoLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/ssologin/SsoLogin;Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;-><init>(Lcom/taobao/android/ssologin/SsoLogin;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 419
    iget-object v0, p0, Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    #getter for: Lcom/taobao/android/ssologin/SsoLogin;->mListener:Lcom/taobao/android/ssologin/SsoStatesChangedListener;
    invoke-static {v0}, Lcom/taobao/android/ssologin/SsoLogin;->access$1(Lcom/taobao/android/ssologin/SsoLogin;)Lcom/taobao/android/ssologin/SsoStatesChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 421
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 422
    new-instance v0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;

    iget-object v1, p0, Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    iget-object v2, p0, Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    #getter for: Lcom/taobao/android/ssologin/SsoLogin;->mToken:I
    invoke-static {v2}, Lcom/taobao/android/ssologin/SsoLogin;->access$2(Lcom/taobao/android/ssologin/SsoLogin;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    #setter for: Lcom/taobao/android/ssologin/SsoLogin;->mToken:I
    invoke-static {v2, v3}, Lcom/taobao/android/ssologin/SsoLogin;->access$3(Lcom/taobao/android/ssologin/SsoLogin;I)V

    invoke-direct {v0, v1, v3}, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;-><init>(Lcom/taobao/android/ssologin/SsoLogin;I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 424
    :cond_1
    new-instance v0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;

    iget-object v1, p0, Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    iget-object v2, p0, Lcom/taobao/android/ssologin/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    #getter for: Lcom/taobao/android/ssologin/SsoLogin;->mToken:I
    invoke-static {v2}, Lcom/taobao/android/ssologin/SsoLogin;->access$2(Lcom/taobao/android/ssologin/SsoLogin;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    #setter for: Lcom/taobao/android/ssologin/SsoLogin;->mToken:I
    invoke-static {v2, v3}, Lcom/taobao/android/ssologin/SsoLogin;->access$3(Lcom/taobao/android/ssologin/SsoLogin;I)V

    invoke-direct {v0, v1, v3}, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;-><init>(Lcom/taobao/android/ssologin/SsoLogin;I)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
