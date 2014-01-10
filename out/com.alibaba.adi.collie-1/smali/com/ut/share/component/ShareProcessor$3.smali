.class Lcom/ut/share/component/ShareProcessor$3;
.super Ljava/lang/Object;
.source "ShareProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/share/component/ShareProcessor;->wrapLink(Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pk:Lcom/ut/share/data/ShareAppInfo;

.field final synthetic pl:Lcom/ut/share/component/ShareProcessor;

.field final synthetic pm:Lcom/ut/share/data/ShareData;


# direct methods
.method constructor <init>(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor$3;->pl:Lcom/ut/share/component/ShareProcessor;

    iput-object p2, p0, Lcom/ut/share/component/ShareProcessor$3;->pk:Lcom/ut/share/data/ShareAppInfo;

    iput-object p3, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 179
    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor$3;->pk:Lcom/ut/share/data/ShareAppInfo;

    invoke-virtual {v6}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v3

    .line 182
    .local v3, spt:Lcom/ut/share/SharePlatform;
    sget-object v6, Lcom/ut/share/SharePlatform;->SMS:Lcom/ut/share/SharePlatform;

    if-eq v3, v6, :cond_0

    sget-object v6, Lcom/ut/share/SharePlatform;->Copy:Lcom/ut/share/SharePlatform;

    if-ne v3, v6, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 184
    .local v2, shouldShorten:Z
    :goto_0
    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    invoke-virtual {v6}, Lcom/ut/share/data/ShareData;->getPageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ut/share/component/ShareProcessor$3;->pk:Lcom/ut/share/data/ShareAppInfo;

    invoke-virtual {v7}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ut/share/SharePlatform;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    invoke-virtual {v8}, Lcom/ut/share/data/ShareData;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v2}, Lcom/ut/share/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, wtext:Ljava/lang/String;
    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    invoke-virtual {v6, v5}, Lcom/ut/share/data/ShareData;->setText(Ljava/lang/String;)V

    .line 188
    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    invoke-virtual {v6}, Lcom/ut/share/data/ShareData;->getLink()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    invoke-virtual {v6}, Lcom/ut/share/data/ShareData;->getLink()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 189
    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    invoke-virtual {v6}, Lcom/ut/share/data/ShareData;->getPageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/ut/share/SharePlatform;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    invoke-virtual {v8}, Lcom/ut/share/data/ShareData;->getLink()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/ut/share/utils/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, wlink:Ljava/lang/String;
    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    if-eqz v2, :cond_1

    invoke-static {v4}, Lcom/ut/share/utils/b;->aq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .end local v4           #wlink:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v4}, Lcom/ut/share/data/ShareData;->setWrappedLink(Ljava/lang/String;)V

    .line 195
    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 196
    .local v1, msg:Landroid/os/Message;
    invoke-static {}, Lcom/ut/share/component/ShareProcessor;->access$100()I

    move-result v6

    iput v6, v1, Landroid/os/Message;->what:I

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v0, messageMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ShareAppInfo"

    iget-object v7, p0, Lcom/ut/share/component/ShareProcessor$3;->pk:Lcom/ut/share/data/ShareAppInfo;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v6, "ShareData"

    iget-object v7, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor$3;->pl:Lcom/ut/share/component/ShareProcessor;

    #getter for: Lcom/ut/share/component/ShareProcessor;->mReceiveShortUrlHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/ut/share/component/ShareProcessor;->access$300(Lcom/ut/share/component/ShareProcessor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void

    .line 182
    .end local v0           #messageMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #shouldShorten:Z
    .end local v5           #wtext:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 193
    .restart local v2       #shouldShorten:Z
    .restart local v5       #wtext:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/ut/share/component/ShareProcessor$3;->pm:Lcom/ut/share/data/ShareData;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/ut/share/data/ShareData;->setWrappedLink(Ljava/lang/String;)V

    goto :goto_1
.end method
