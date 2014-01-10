.class Lorg/android/agoo/service/AgooService$1$1;
.super Ljava/lang/Object;
.source "AgooService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/service/AgooService$1;->probe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/android/agoo/service/AgooService$1;


# direct methods
.method constructor <init>(Lorg/android/agoo/service/AgooService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 351
    const-string v1, "AgooService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageServiceBinder probe--->[thread_name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v1, v1, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/android/agoo/service/AgooService;->access$100(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/android/agoo/config/Config;->getCurrentSudo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, currentSudoPack:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v1, v1, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->appPackage:Ljava/lang/String;
    invoke-static {v1}, Lorg/android/agoo/service/AgooService;->access$200(Lorg/android/agoo/service/AgooService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v1, v1, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;
    invoke-static {v1}, Lorg/android/agoo/service/AgooService;->access$000(Lorg/android/agoo/service/AgooService;)Lorg/android/agoo/message/AbsMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v1, v1, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->messagePush:Lorg/android/agoo/message/AbsMessage;
    invoke-static {v1}, Lorg/android/agoo/service/AgooService;->access$000(Lorg/android/agoo/service/AgooService;)Lorg/android/agoo/message/AbsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/android/agoo/message/AbsMessage;->ping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    const-string v1, "AgooService"

    const-string v2, "messageService connect[ok]"

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v1, v1, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->bindAppPack:Ljava/lang/String;
    invoke-static {v1}, Lorg/android/agoo/service/AgooService;->access$300(Lorg/android/agoo/service/AgooService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v1, v1, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->bindAppPack:Ljava/lang/String;
    invoke-static {v1}, Lorg/android/agoo/service/AgooService;->access$300(Lorg/android/agoo/service/AgooService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v2, v2, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/android/agoo/service/AgooService;->access$400(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    iget-object v1, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v1, v1, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/android/agoo/service/AgooService;->access$500(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v2, v2, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->bindAppPack:Ljava/lang/String;
    invoke-static {v2}, Lorg/android/agoo/service/AgooService;->access$300(Lorg/android/agoo/service/AgooService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/UTHelper;->agooAppPing(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    :cond_1
    const-string v1, "AgooService"

    const-string v2, "messageServiceBinder[need_election]"

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v1, v1, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    iget-object v2, p0, Lorg/android/agoo/service/AgooService$1$1;->this$1:Lorg/android/agoo/service/AgooService$1;

    iget-object v2, v2, Lorg/android/agoo/service/AgooService$1;->this$0:Lorg/android/agoo/service/AgooService;

    #getter for: Lorg/android/agoo/service/AgooService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/android/agoo/service/AgooService;->access$600(Lorg/android/agoo/service/AgooService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ERROR_NEED_ELECTION"

    #calls: Lorg/android/agoo/service/AgooService;->handleError(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lorg/android/agoo/service/AgooService;->access$700(Lorg/android/agoo/service/AgooService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
