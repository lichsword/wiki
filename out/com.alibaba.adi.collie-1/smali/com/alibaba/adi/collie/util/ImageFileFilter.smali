.class public Lcom/alibaba/adi/collie/util/ImageFileFilter;
.super Ljava/lang/Object;
.source "ImageFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field private static final sImgExt:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gif"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bmp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/adi/collie/util/ImageFileFilter;->sImgExt:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 13
    sget-object v3, Lcom/alibaba/adi/collie/util/ImageFileFilter;->sImgExt:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 18
    :goto_1
    return v1

    .line 13
    :cond_0
    aget-object v0, v3, v2

    .line 14
    .local v0, extension:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    const/4 v1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
