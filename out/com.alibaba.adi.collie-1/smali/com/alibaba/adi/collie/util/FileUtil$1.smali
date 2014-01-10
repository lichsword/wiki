.class Lcom/alibaba/adi/collie/util/FileUtil$1;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$content:Ljava/lang/String;

.field private final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/FileUtil$1;->val$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/adi/collie/util/FileUtil$1;->val$content:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/FileUtil$1;->val$fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/adi/collie/util/FileUtil$1;->val$content:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorageSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
