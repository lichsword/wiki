.class Lorg/android/agoo/client/BaseIntentService$1;
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
    .line 685
    iput-object p1, p0, Lorg/android/agoo/client/BaseIntentService$1;->this$0:Lorg/android/agoo/client/BaseIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "className"
    .parameter "service"

    .prologue
    .line 687
    const-string v2, "BaseIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "electionConnection pack["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/client/BaseIntentService$1;->this$0:Lorg/android/agoo/client/BaseIntentService;

    invoke-virtual {v2}, Lorg/android/agoo/client/BaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 690
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lorg/android/agoo/client/BaseIntentService$1;->this$0:Lorg/android/agoo/client/BaseIntentService;

    invoke-static {p2}, Lorg/android/agoo/service/IElectionService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/android/agoo/service/IElectionService;

    move-result-object v3

    #setter for: Lorg/android/agoo/client/BaseIntentService;->electionService:Lorg/android/agoo/service/IElectionService;
    invoke-static {v2, v3}, Lorg/android/agoo/client/BaseIntentService;->access$002(Lorg/android/agoo/client/BaseIntentService;Lorg/android/agoo/service/IElectionService;)Lorg/android/agoo/service/IElectionService;

    .line 691
    iget-object v2, p0, Lorg/android/agoo/client/BaseIntentService$1;->this$0:Lorg/android/agoo/client/BaseIntentService;

    #getter for: Lorg/android/agoo/client/BaseIntentService;->electionService:Lorg/android/agoo/service/IElectionService;
    invoke-static {v2}, Lorg/android/agoo/client/BaseIntentService;->access$000(Lorg/android/agoo/client/BaseIntentService;)Lorg/android/agoo/service/IElectionService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, p0, Lorg/android/agoo/client/BaseIntentService$1;->this$0:Lorg/android/agoo/client/BaseIntentService;

    #getter for: Lorg/android/agoo/client/BaseIntentService;->electionService:Lorg/android/agoo/service/IElectionService;
    invoke-static {v2}, Lorg/android/agoo/client/BaseIntentService;->access$000(Lorg/android/agoo/client/BaseIntentService;)Lorg/android/agoo/service/IElectionService;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/android/agoo/client/AgooSettings;->getAgooReleaseTime()J

    move-result-wide v4

    const-string v6, "token"

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/android/agoo/service/IElectionService;->election(Ljava/lang/String;JLjava/lang/String;)V

    .line 694
    iget-object v2, p0, Lorg/android/agoo/client/BaseIntentService$1;->this$0:Lorg/android/agoo/client/BaseIntentService;

    #calls: Lorg/android/agoo/client/BaseIntentService;->closeElection(Landroid/content/Context;)V
    invoke-static {v2, v0}, Lorg/android/agoo/client/BaseIntentService;->access$100(Lorg/android/agoo/client/BaseIntentService;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v1

    .line 698
    .local v1, e:Ljava/lang/Throwable;
    const-string v2, "BaseIntentService"

    const-string v3, "onServiceConnected"

    invoke-static {v2, v3, v1}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 703
    const-string v0, "BaseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "electionDisconnected pack["

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

    .line 704
    iget-object v0, p0, Lorg/android/agoo/client/BaseIntentService$1;->this$0:Lorg/android/agoo/client/BaseIntentService;

    const/4 v1, 0x0

    #setter for: Lorg/android/agoo/client/BaseIntentService;->electionService:Lorg/android/agoo/service/IElectionService;
    invoke-static {v0, v1}, Lorg/android/agoo/client/BaseIntentService;->access$002(Lorg/android/agoo/client/BaseIntentService;Lorg/android/agoo/service/IElectionService;)Lorg/android/agoo/service/IElectionService;

    .line 705
    return-void
.end method
