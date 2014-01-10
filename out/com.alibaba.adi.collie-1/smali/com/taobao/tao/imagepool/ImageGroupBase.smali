.class public abstract Lcom/taobao/tao/imagepool/ImageGroupBase;
.super Ljava/lang/Object;
.source "ImageGroupBase.java"

# interfaces
.implements Lcom/taobao/tao/imagepool/ImageGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;
    }
.end annotation


# instance fields
.field protected m_cachePolicy:I

.field protected m_caller:Ljava/lang/Thread;

.field protected m_groupName:Ljava/lang/String;

.field protected m_il:Lcom/taobao/tao/imagepool/ImageListener;

.field private m_imageHandler:Landroid/os/Handler;

.field protected m_loadingCount:I

.field protected m_priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Application;II)V
    .locals 2
    .parameter "name"
    .parameter "context"
    .parameter "priority"
    .parameter "cache_type"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_cachePolicy:I

    .line 35
    iput v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_loadingCount:I

    .line 119
    iput p3, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_priority:I

    .line 120
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_groupName:Ljava/lang/String;

    .line 121
    iput p4, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_cachePolicy:I

    .line 122
    iput v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_loadingCount:I

    .line 125
    :try_start_0
    new-instance v0, Landroid/taobao/util/SafeHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/taobao/util/SafeHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_imageHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_caller:Ljava/lang/Thread;

    .line 135
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final addLoadingCount()V
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_loadingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_loadingCount:I

    .line 54
    return-void
.end method

.method public abstract appendList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImageHandler;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract appendURIList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract deleteImage(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public doSendMsg(ILjava/lang/String;I)V
    .locals 5
    .parameter "res"
    .parameter "URI"
    .parameter "index"

    .prologue
    .line 257
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_caller:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_il:Lcom/taobao/tao/imagepool/ImageListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImageListener;->feedImage(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageGroup.doSendMsg error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 268
    .local v1, resmsg:Landroid/os/Message;
    const/16 v2, 0x3f8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 269
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 271
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 272
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_imageHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_imageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public doSendProgressMsg(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 8
    .parameter "desc"
    .parameter "size"
    .parameter "total"
    .parameter "url"
    .parameter "index"

    .prologue
    .line 298
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 299
    .local v7, resmsg:Landroid/os/Message;
    const/16 v0, 0x3fb

    iput v0, v7, Landroid/os/Message;->what:I

    .line 300
    new-instance v0, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;-><init>(Lcom/taobao/tao/imagepool/ImageGroupBase;Ljava/lang/String;IILjava/lang/String;I)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_imageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_imageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    :cond_0
    return-void
.end method

.method public getCachePolicy()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_cachePolicy:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_groupName:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageListener()Lcom/taobao/tao/imagepool/ImageListener;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_il:Lcom/taobao/tao/imagepool/ImageListener;

    return-object v0
.end method

.method public final getLoadingCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_loadingCount:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_priority:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    .line 309
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 330
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 313
    :pswitch_1
    :try_start_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;

    .line 314
    .local v8, pmsg:Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_il:Lcom/taobao/tao/imagepool/ImageListener;

    iget-object v1, v8, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_desc:Ljava/lang/String;

    iget v2, v8, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_size:I

    iget v3, v8, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_total:I

    iget-object v4, v8, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_url:Ljava/lang/String;

    iget v5, v8, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_index:I

    invoke-interface/range {v0 .. v5}, Lcom/taobao/tao/imagepool/ImageListener;->onProgress(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    .end local v8           #pmsg:Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;
    :catch_0
    move-exception v7

    .line 317
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageGroup.handleMessage error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v7           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 323
    .local v6, URI:Ljava/lang/String;
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_il:Lcom/taobao/tao/imagepool/ImageListener;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v6, v2}, Lcom/taobao/tao/imagepool/ImageListener;->feedImage(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 325
    .end local v6           #URI:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 326
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageGroup.handleMessage error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x3f8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract scheduleNext()Lcom/taobao/tao/imagepool/ScheduleInfo;
.end method

.method public abstract setActiveWindow(II)Z
.end method

.method public abstract setHandlerList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImageHandler;",
            ">;)V"
        }
    .end annotation
.end method

.method public setImageListener(Lcom/taobao/tao/imagepool/ImageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_il:Lcom/taobao/tao/imagepool/ImageListener;

    .line 150
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .parameter "pri"

    .prologue
    .line 88
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_priority:I

    if-ne v0, p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    iget v1, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_priority:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/taobao/tao/imagepool/ImagePool;->groupPriorityChanged(Lcom/taobao/tao/imagepool/ImageGroup;II)V

    .line 91
    iput p1, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_priority:I

    goto :goto_0
.end method

.method public final start()V
    .locals 2

    .prologue
    .line 226
    :try_start_0
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/tao/imagepool/ImagePool;->addGroup(Lcom/taobao/tao/imagepool/ImageGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final subLoadingCount()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_loadingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/tao/imagepool/ImageGroupBase;->m_loadingCount:I

    .line 62
    return-void
.end method
