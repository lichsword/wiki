.class Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;
.super Ljava/lang/Object;
.source "ImagePool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/imagepool/ImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCreatorExecutor"
.end annotation


# instance fields
.field private m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

.field private m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

.field private m_index:I

.field final synthetic this$0:Lcom/taobao/tao/imagepool/ImagePool;


# direct methods
.method public constructor <init>(Lcom/taobao/tao/imagepool/ImagePool;Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    .locals 0
    .parameter
    .parameter "ih"
    .parameter "ig"
    .parameter "index"

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    iput-object p2, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 1058
    iput-object p3, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

    .line 1059
    iput p4, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_index:I

    .line 1061
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1079
    const/16 v6, 0x13

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1080
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v6, v6, Lcom/taobao/tao/imagepool/ImagePool;->m_context:Landroid/app/Application;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

    if-nez v6, :cond_1

    .line 1082
    :cond_0
    const-string v6, "TaoSdk.ImgPool"

    const-string v7, "BitmapCreatorExecutor m_context is null!"

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :goto_0
    return-void

    .line 1085
    :cond_1
    const-string v6, "TaoSdk.ImgPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BitmapCreatorExecutor run url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v8}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const/4 v2, -0x2

    .line 1088
    .local v2, res:I
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v6}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v5

    .line 1089
    .local v5, uri:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1090
    :cond_2
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v7}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_index:I

    invoke-interface {v6, v2, v7, v8}, Lcom/taobao/tao/imagepool/ImageGroup;->feedImage(ILjava/lang/String;I)V

    goto :goto_0

    .line 1093
    :cond_3
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v6}, Lcom/taobao/tao/imagepool/ImageHandler;->getBitmapCreator()Lcom/taobao/tao/imagepool/BitmapCreator;

    move-result-object v1

    .line 1094
    .local v1, creator:Lcom/taobao/tao/imagepool/BitmapCreator;
    if-eqz v1, :cond_5

    .line 1095
    invoke-interface {v1, v5}, Lcom/taobao/tao/imagepool/BitmapCreator;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1096
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 1097
    new-instance v4, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-direct {v4, v0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1098
    .local v4, td:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    if-eqz v4, :cond_5

    .line 1100
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/taobao/tao/imagepool/ImageHandler;->setDrawable(Landroid/graphics/drawable/Drawable;Z)Z

    move-result v3

    .line 1101
    .local v3, suc:Z
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;
    invoke-static {v6}, Lcom/taobao/tao/imagepool/ImagePool;->access$200(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v6, v7}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->add(Lcom/taobao/tao/imagepool/ImageHandler;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1103
    if-eqz v3, :cond_4

    .line 1105
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v6, v6, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v7, v6, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    .line 1106
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v6, v6, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v7, v6, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    invoke-virtual {v4}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    .line 1109
    :cond_4
    const/4 v2, 0x0

    .line 1114
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #suc:Z
    .end local v4           #td:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    :cond_5
    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

    iget-object v7, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v7}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->m_index:I

    invoke-interface {v6, v2, v7, v8}, Lcom/taobao/tao/imagepool/ImageGroup;->feedImage(ILjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1068
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$800(Lcom/taobao/tao/imagepool/ImagePool;)Landroid/taobao/threadpool2/ThreadPage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    new-instance v1, Landroid/taobao/threadpool2/ThreadPage;

    invoke-direct {v1, v2}, Landroid/taobao/threadpool2/ThreadPage;-><init>(I)V

    #setter for: Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;
    invoke-static {v0, v1}, Lcom/taobao/tao/imagepool/ImagePool;->access$802(Lcom/taobao/tao/imagepool/ImagePool;Landroid/taobao/threadpool2/ThreadPage;)Landroid/taobao/threadpool2/ThreadPage;

    .line 1071
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$800(Lcom/taobao/tao/imagepool/ImagePool;)Landroid/taobao/threadpool2/ThreadPage;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/taobao/threadpool2/ThreadPage;->setSimulTask(I)V

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$800(Lcom/taobao/tao/imagepool/ImagePool;)Landroid/taobao/threadpool2/ThreadPage;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Landroid/taobao/threadpool2/ThreadPage;->execute(Ljava/lang/Runnable;I)V

    .line 1075
    return-void
.end method
