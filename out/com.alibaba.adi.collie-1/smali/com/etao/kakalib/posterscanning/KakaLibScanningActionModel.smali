.class public final Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;
.super Ljava/lang/Object;
.source "KakaLibScanningActionModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel$ScanningActionType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x76753ab79f5a75c6L


# instance fields
.field public actionContent:Ljava/lang/String;

.field public actionStr:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public cycle:I

.field public delay:J

.field public picUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public time:J

.field public titleColor:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->cycle:I

    .line 37
    iput-wide v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->delay:J

    .line 38
    iput-wide v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->time:J

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->titleColor:I

    .line 40
    iput-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->picUriList:Ljava/util/ArrayList;

    .line 41
    iput-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionStr:Ljava/lang/String;

    .line 42
    const-string v0, "back"

    iput-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;->actionType:Ljava/lang/String;

    .line 43
    return-void
.end method
