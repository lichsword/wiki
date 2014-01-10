.class Lcom/ut/share/component/ShareProcessor$1;
.super Ljava/lang/Object;
.source "ShareProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/share/component/ShareProcessor;->share(Lcom/ut/share/data/ShareAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pk:Lcom/ut/share/data/ShareAppInfo;

.field final synthetic pl:Lcom/ut/share/component/ShareProcessor;


# direct methods
.method constructor <init>(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor$1;->pl:Lcom/ut/share/component/ShareProcessor;

    iput-object p2, p0, Lcom/ut/share/component/ShareProcessor$1;->pk:Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ut/share/component/ShareProcessor$1;->pl:Lcom/ut/share/component/ShareProcessor;

    iget-object v1, p0, Lcom/ut/share/component/ShareProcessor$1;->pk:Lcom/ut/share/data/ShareAppInfo;

    #calls: Lcom/ut/share/component/ShareProcessor;->shareStep1(Lcom/ut/share/data/ShareAppInfo;)V
    invoke-static {v0, v1}, Lcom/ut/share/component/ShareProcessor;->access$000(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;)V

    .line 139
    return-void
.end method
