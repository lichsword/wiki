.class public Lcom/taobao/statistic/a;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final iw:Ljava/lang/String;

.field public static final ix:[Ljava/lang/String;

.field public static final iy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".UTSystemConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/statistic/a;->iw:Ljava/lang/String;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "reissue=true"

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/statistic/a;->ix:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://m.tmall.com"

    aput-object v1, v0, v2

    const-string v1, "http://m.taobao.com"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "http://m.etao.com"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/taobao/statistic/a;->iy:Ljava/util/List;

    return-void
.end method
