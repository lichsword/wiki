.class Lcom/ut/share/component/ShareProcessor$2;
.super Landroid/os/Handler;
.source "ShareProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/share/component/ShareProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pl:Lcom/ut/share/component/ShareProcessor;


# direct methods
.method constructor <init>(Lcom/ut/share/component/ShareProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ut/share/component/ShareProcessor$2;->pl:Lcom/ut/share/component/ShareProcessor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/ut/share/component/ShareProcessor;->access$100()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 150
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 151
    .local v1, messageMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ShareAppInfo"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, info:Ljava/lang/Object;
    const-string v3, "ShareData"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, shareData:Ljava/lang/Object;
    instance-of v3, v0, Lcom/ut/share/data/ShareAppInfo;

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/ut/share/data/ShareData;

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/ut/share/component/ShareProcessor$2;->pl:Lcom/ut/share/component/ShareProcessor;

    check-cast v0, Lcom/ut/share/data/ShareAppInfo;

    .end local v0           #info:Ljava/lang/Object;
    check-cast v2, Lcom/ut/share/data/ShareData;

    .end local v2           #shareData:Ljava/lang/Object;
    #calls: Lcom/ut/share/component/ShareProcessor;->shareStep2(Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V
    invoke-static {v3, v0, v2}, Lcom/ut/share/component/ShareProcessor;->access$200(Lcom/ut/share/component/ShareProcessor;Lcom/ut/share/data/ShareAppInfo;Lcom/ut/share/data/ShareData;)V

    .line 157
    .end local v1           #messageMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
