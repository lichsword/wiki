.class final Lcom/autonavi/aps/amapapi/Upload$1;
.super Ljava/lang/Thread;
.source "Upload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/aps/amapapi/Upload;->upload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/autonavi/aps/amapapi/Upload;

.field private final synthetic b:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>(Lcom/autonavi/aps/amapapi/Upload;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/Upload$1;->a:Lcom/autonavi/aps/amapapi/Upload;

    iput-object p2, p0, Lcom/autonavi/aps/amapapi/Upload$1;->b:Landroid/net/NetworkInfo;

    .line 88
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    const-string v0, "http://cgicol.amap.com/collection/writedata?ver=v1.1_amap"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v0, "&zei="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v0, "&zsi="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lcom/autonavi/aps/amapapi/Const;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload$1;->a:Lcom/autonavi/aps/amapapi/Upload;

    #getter for: Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Upload;->access$0(Lcom/autonavi/aps/amapapi/Upload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 113
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload$1;->a:Lcom/autonavi/aps/amapapi/Upload;

    #getter for: Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Upload;->access$0(Lcom/autonavi/aps/amapapi/Upload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/autonavi/aps/amapapi/Upload$1;->a:Lcom/autonavi/aps/amapapi/Upload;

    #getter for: Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;
    invoke-static {v2}, Lcom/autonavi/aps/amapapi/Upload;->access$0(Lcom/autonavi/aps/amapapi/Upload;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/autonavi/aps/amapapi/Upload$1;->a:Lcom/autonavi/aps/amapapi/Upload;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/autonavi/aps/amapapi/Upload$1;->b:Landroid/net/NetworkInfo;

    #calls: Lcom/autonavi/aps/amapapi/Upload;->doUpload(Ljava/lang/String;Ljava/io/File;Landroid/net/NetworkInfo;)Z
    invoke-static {v2, v3, v0, v4}, Lcom/autonavi/aps/amapapi/Upload;->access$1(Lcom/autonavi/aps/amapapi/Upload;Ljava/lang/String;Ljava/io/File;Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 108
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload$1;->a:Lcom/autonavi/aps/amapapi/Upload;

    #getter for: Lcom/autonavi/aps/amapapi/Upload;->lstFile:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Upload;->access$0(Lcom/autonavi/aps/amapapi/Upload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    :cond_2
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
