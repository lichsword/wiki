.class public Lcom/alibaba/adi/collie/service/task/VersionCheckTask;
.super Ljava/lang/Object;
.source "VersionCheckTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mBaseContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "baseContext"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/task/VersionCheckTask;->mBaseContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;->getsIntance()Lcom/alibaba/adi/collie/business/version/AdiVersionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/task/VersionCheckTask;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;->checkVersion(Landroid/content/Context;)V

    .line 22
    return-void
.end method
