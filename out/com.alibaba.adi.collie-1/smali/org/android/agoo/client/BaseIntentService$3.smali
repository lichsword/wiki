.class Lorg/android/agoo/client/BaseIntentService$3;
.super Ljava/lang/Object;
.source "BaseIntentService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/client/BaseIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/android/agoo/client/BaseIntentService;


# direct methods
.method constructor <init>(Lorg/android/agoo/client/BaseIntentService;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lorg/android/agoo/client/BaseIntentService$3;->this$0:Lorg/android/agoo/client/BaseIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 820
    const-string v1, "BaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageConnected pack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v1, p0, Lorg/android/agoo/client/BaseIntentService$3;->this$0:Lorg/android/agoo/client/BaseIntentService;

    const/4 v2, 0x1

    #setter for: Lorg/android/agoo/client/BaseIntentService;->isMessageServiceConnected:Z
    invoke-static {v1, v2}, Lorg/android/agoo/client/BaseIntentService;->access$302(Lorg/android/agoo/client/BaseIntentService;Z)Z

    .line 822
    iget-object v1, p0, Lorg/android/agoo/client/BaseIntentService$3;->this$0:Lorg/android/agoo/client/BaseIntentService;

    invoke-static {p2}, Lorg/android/agoo/service/IMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/android/agoo/service/IMessageService;

    move-result-object v2

    #setter for: Lorg/android/agoo/client/BaseIntentService;->messageService:Lorg/android/agoo/service/IMessageService;
    invoke-static {v1, v2}, Lorg/android/agoo/client/BaseIntentService;->access$402(Lorg/android/agoo/client/BaseIntentService;Lorg/android/agoo/service/IMessageService;)Lorg/android/agoo/service/IMessageService;

    .line 823
    iget-object v1, p0, Lorg/android/agoo/client/BaseIntentService$3;->this$0:Lorg/android/agoo/client/BaseIntentService;

    invoke-virtual {v1}, Lorg/android/agoo/client/BaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 824
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lorg/android/agoo/client/BaseIntentService$3;->this$0:Lorg/android/agoo/client/BaseIntentService;

    #calls: Lorg/android/agoo/client/BaseIntentService;->pingMessage(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lorg/android/agoo/client/BaseIntentService;->access$500(Lorg/android/agoo/client/BaseIntentService;Landroid/content/Context;)V

    .line 825
    iget-object v1, p0, Lorg/android/agoo/client/BaseIntentService$3;->this$0:Lorg/android/agoo/client/BaseIntentService;

    #calls: Lorg/android/agoo/client/BaseIntentService;->closePingMessage(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lorg/android/agoo/client/BaseIntentService;->access$600(Lorg/android/agoo/client/BaseIntentService;Landroid/content/Context;)V

    .line 826
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 829
    const-string v0, "BaseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageDisconnected pack["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method
