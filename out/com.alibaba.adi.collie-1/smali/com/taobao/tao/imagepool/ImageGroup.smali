.class public interface abstract Lcom/taobao/tao/imagepool/ImageGroup;
.super Ljava/lang/Object;
.source "ImageGroup.java"

# interfaces
.implements Lcom/taobao/tao/imagepool/ImageListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final PRIORITY_DORMANT:I = 0x2

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final PRIORITY_TOP:I


# virtual methods
.method public abstract addLoadingCount()V
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

.method public abstract doSendMsg(ILjava/lang/String;I)V
.end method

.method public abstract getCachePolicy()I
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public abstract getImageListener()Lcom/taobao/tao/imagepool/ImageListener;
.end method

.method public abstract getLoadingCount()I
.end method

.method public abstract getPriority()I
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

.method public abstract setImageListener(Lcom/taobao/tao/imagepool/ImageListener;)V
.end method

.method public abstract setPriority(I)V
.end method

.method public abstract setURIList(Ljava/util/ArrayList;)V
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

.method public abstract start()V
.end method

.method public abstract subLoadingCount()V
.end method
