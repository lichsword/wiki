.class Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;
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
    name = "IconExecutor"
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
    .line 931
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object p2, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    .line 933
    iput-object p3, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

    .line 934
    iput p4, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_index:I

    .line 936
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 954
    const/16 v12, 0x13

    invoke-static {v12}, Landroid/os/Process;->setThreadPriority(I)V

    .line 955
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v12, v12, Lcom/taobao/tao/imagepool/ImagePool;->m_context:Landroid/app/Application;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

    if-nez v12, :cond_1

    .line 957
    :cond_0
    const-string v12, "TaoSdk.ImgPool"

    const-string v13, "m_context is null!"

    invoke-static {v12, v13}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    :goto_0
    return-void

    .line 960
    :cond_1
    const-string v12, "TaoSdk.ImgPool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IconExecutor run url: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v14}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v9, -0x2

    .line 963
    .local v9, res:I
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v12}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 966
    .local v3, i:I
    const-string v5, ""

    .line 967
    .local v5, packageName:Ljava/lang/String;
    if-ltz v3, :cond_2

    .line 968
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v12}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v3, 0x3

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 969
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_7

    .line 971
    const/4 v6, 0x0

    .line 972
    .local v6, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v12, v12, Lcom/taobao/tao/imagepool/ImagePool;->m_context:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 974
    .local v8, pm:Landroid/content/pm/PackageManager;
    if-nez v8, :cond_3

    .line 976
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

    iget-object v13, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v13}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v13

    iget v14, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_index:I

    invoke-interface {v12, v9, v13, v14}, Lcom/taobao/tao/imagepool/ImageGroup;->feedImage(ILjava/lang/String;I)V

    goto :goto_0

    .line 981
    :cond_3
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 990
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 992
    .local v7, pi:Landroid/content/pm/PackageInfo;
    iget-object v12, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 995
    iget-object v12, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 996
    .local v1, d:Landroid/graphics/drawable/Drawable;
    instance-of v12, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v12, :cond_5

    .line 998
    const-string v12, "TaoSdk.ImgPool"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "icon isn\'t a bitmap drawalbe url:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v14}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 983
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 985
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 986
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

    iget-object v13, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v13}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v13

    iget v14, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_index:I

    invoke-interface {v12, v9, v13, v14}, Lcom/taobao/tao/imagepool/ImageGroup;->feedImage(ILjava/lang/String;I)V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #pi:Landroid/content/pm/PackageInfo;
    :cond_5
    move-object v0, v1

    .line 1004
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1005
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v11, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/taobao/tao/imagepool/utility/TBDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1006
    .local v11, td:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    if-eqz v11, :cond_7

    .line 1008
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Lcom/taobao/tao/imagepool/ImageHandler;->setDrawable(Landroid/graphics/drawable/Drawable;Z)Z

    move-result v10

    .line 1009
    .local v10, suc:Z
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;
    invoke-static {v12}, Lcom/taobao/tao/imagepool/ImagePool;->access$200(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    move-result-object v12

    iget-object v13, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v12, v13}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->add(Lcom/taobao/tao/imagepool/ImageHandler;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1011
    if-eqz v10, :cond_6

    .line 1013
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v12, v12, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v13, v12, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    .line 1014
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    iget-object v12, v12, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v13, v12, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    invoke-virtual {v11}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v12, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    .line 1017
    :cond_6
    const/4 v9, 0x0

    .line 1023
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7           #pi:Landroid/content/pm/PackageInfo;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #suc:Z
    .end local v11           #td:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    :cond_7
    iget-object v12, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ig:Lcom/taobao/tao/imagepool/ImageGroup;

    iget-object v13, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_ih:Lcom/taobao/tao/imagepool/ImageHandler;

    invoke-virtual {v13}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v13

    iget v14, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->m_index:I

    invoke-interface {v12, v9, v13, v14}, Lcom/taobao/tao/imagepool/ImageGroup;->feedImage(ILjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 943
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$800(Lcom/taobao/tao/imagepool/ImagePool;)Landroid/taobao/threadpool2/ThreadPage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    new-instance v1, Landroid/taobao/threadpool2/ThreadPage;

    invoke-direct {v1, v2}, Landroid/taobao/threadpool2/ThreadPage;-><init>(I)V

    #setter for: Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;
    invoke-static {v0, v1}, Lcom/taobao/tao/imagepool/ImagePool;->access$802(Lcom/taobao/tao/imagepool/ImagePool;Landroid/taobao/threadpool2/ThreadPage;)Landroid/taobao/threadpool2/ThreadPage;

    .line 946
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$800(Lcom/taobao/tao/imagepool/ImagePool;)Landroid/taobao/threadpool2/ThreadPage;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/taobao/threadpool2/ThreadPage;->setSimulTask(I)V

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->this$0:Lcom/taobao/tao/imagepool/ImagePool;

    #getter for: Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;
    invoke-static {v0}, Lcom/taobao/tao/imagepool/ImagePool;->access$800(Lcom/taobao/tao/imagepool/ImagePool;)Landroid/taobao/threadpool2/ThreadPage;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Landroid/taobao/threadpool2/ThreadPage;->execute(Ljava/lang/Runnable;I)V

    .line 950
    return-void
.end method
