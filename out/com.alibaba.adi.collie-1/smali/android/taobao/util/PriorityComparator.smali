.class public Landroid/taobao/util/PriorityComparator;
.super Ljava/lang/Object;
.source "PriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/taobao/util/Priority;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/taobao/util/Priority;Landroid/taobao/util/Priority;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 15
    invoke-interface {p1}, Landroid/taobao/util/Priority;->getPriority()I

    move-result v0

    .line 16
    .local v0, priority1:I
    invoke-interface {p2}, Landroid/taobao/util/Priority;->getPriority()I

    move-result v1

    .line 17
    .local v1, priority2:I
    if-le v0, v1, :cond_0

    .line 18
    const/4 v2, 0x1

    .line 22
    :goto_0
    return v2

    .line 19
    :cond_0
    if-ge v0, v1, :cond_1

    .line 20
    const/4 v2, -0x1

    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    check-cast p1, Landroid/taobao/util/Priority;

    .end local p1
    check-cast p2, Landroid/taobao/util/Priority;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/taobao/util/PriorityComparator;->compare(Landroid/taobao/util/Priority;Landroid/taobao/util/Priority;)I

    move-result v0

    return v0
.end method
