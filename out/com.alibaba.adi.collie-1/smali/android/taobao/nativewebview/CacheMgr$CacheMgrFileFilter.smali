.class Landroid/taobao/nativewebview/CacheMgr$CacheMgrFileFilter;
.super Ljava/lang/Object;
.source "CacheMgr.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/nativewebview/CacheMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheMgrFileFilter"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Landroid/taobao/nativewebview/CacheMgr$CacheMgrFileFilter;->name:Ljava/lang/String;

    .line 340
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 344
    iget-object v0, p0, Landroid/taobao/nativewebview/CacheMgr$CacheMgrFileFilter;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
