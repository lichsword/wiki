.class public Lcom/taobao/statistic/module/g/b;
.super Ljava/lang/Object;
.source "SimpleEventIDStrategier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/module/g/b$a;
    }
.end annotation


# static fields
.field private static final oL:Ljava/lang/Object;


# instance fields
.field protected oM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/statistic/module/g/b$a;",
            ">;"
        }
    .end annotation
.end field

.field protected oN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private oO:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/statistic/module/g/b;->oL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/module/g/b;->oM:Ljava/util/Map;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/module/g/b;->oN:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/module/g/b;->oO:Ljava/util/Random;

    .line 122
    return-void
.end method


# virtual methods
.method public U(I)Lcom/taobao/statistic/module/g/c;
    .locals 8
    .parameter "pEventId"

    .prologue
    .line 59
    sget-object v6, Lcom/taobao/statistic/module/g/b;->oL:Ljava/lang/Object;

    monitor-enter v6

    .line 61
    if-gez p1, :cond_0

    .line 62
    :try_start_0
    new-instance v2, Lcom/taobao/statistic/module/g/c;

    invoke-direct {v2}, Lcom/taobao/statistic/module/g/c;-><init>()V

    .line 63
    .local v2, lResult:Lcom/taobao/statistic/module/g/c;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/taobao/statistic/module/g/c;->z(Z)V

    .line 64
    monitor-exit v6

    .line 117
    .end local v2           #lResult:Lcom/taobao/statistic/module/g/c;
    :goto_0
    return-object v2

    .line 67
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, lKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/statistic/module/g/b;->oN:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/taobao/statistic/module/g/b;->oN:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    new-instance v2, Lcom/taobao/statistic/module/g/c;

    invoke-direct {v2}, Lcom/taobao/statistic/module/g/c;-><init>()V

    .line 72
    .restart local v2       #lResult:Lcom/taobao/statistic/module/g/c;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/taobao/statistic/module/g/c;->z(Z)V

    .line 73
    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/taobao/statistic/module/g/c;->W(I)V

    .line 74
    monitor-exit v6

    goto :goto_0

    .line 119
    .end local v1           #lKey:Ljava/lang/String;
    .end local v2           #lResult:Lcom/taobao/statistic/module/g/c;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 78
    .restart local v1       #lKey:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/taobao/statistic/module/g/b;->oM:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/statistic/module/g/b$a;

    .line 79
    .local v0, lESI:Lcom/taobao/statistic/module/g/b$a;
    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0, v0}, Lcom/taobao/statistic/module/g/b;->a(Lcom/taobao/statistic/module/g/b$a;)Lcom/taobao/statistic/module/g/c;

    move-result-object v2

    monitor-exit v6

    goto :goto_0

    .line 84
    :cond_2
    rem-int/lit16 v5, p1, 0x3e8

    sub-int v3, p1, v5

    .line 85
    .local v3, lSEventID:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, lSKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/statistic/module/g/b;->oM:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #lESI:Lcom/taobao/statistic/module/g/b$a;
    check-cast v0, Lcom/taobao/statistic/module/g/b$a;

    .line 87
    .restart local v0       #lESI:Lcom/taobao/statistic/module/g/b$a;
    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {p0, v0}, Lcom/taobao/statistic/module/g/b;->a(Lcom/taobao/statistic/module/g/b$a;)Lcom/taobao/statistic/module/g/c;

    move-result-object v2

    monitor-exit v6

    goto :goto_0

    .line 92
    :cond_3
    const/16 v5, 0x4e20

    if-le p1, v5, :cond_4

    .line 93
    iget-object v5, p0, Lcom/taobao/statistic/module/g/b;->oM:Ljava/util/Map;

    const-string v7, "-3"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #lESI:Lcom/taobao/statistic/module/g/b$a;
    check-cast v0, Lcom/taobao/statistic/module/g/b$a;

    .line 94
    .restart local v0       #lESI:Lcom/taobao/statistic/module/g/b$a;
    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {p0, v0}, Lcom/taobao/statistic/module/g/b;->a(Lcom/taobao/statistic/module/g/b$a;)Lcom/taobao/statistic/module/g/c;

    move-result-object v2

    monitor-exit v6

    goto :goto_0

    .line 100
    :cond_4
    const/16 v5, 0x2710

    if-le p1, v5, :cond_5

    .line 101
    iget-object v5, p0, Lcom/taobao/statistic/module/g/b;->oM:Ljava/util/Map;

    const-string v7, "-2"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #lESI:Lcom/taobao/statistic/module/g/b$a;
    check-cast v0, Lcom/taobao/statistic/module/g/b$a;

    .line 102
    .restart local v0       #lESI:Lcom/taobao/statistic/module/g/b$a;
    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {p0, v0}, Lcom/taobao/statistic/module/g/b;->a(Lcom/taobao/statistic/module/g/b$a;)Lcom/taobao/statistic/module/g/c;

    move-result-object v2

    monitor-exit v6

    goto/16 :goto_0

    .line 108
    :cond_5
    iget-object v5, p0, Lcom/taobao/statistic/module/g/b;->oM:Ljava/util/Map;

    const-string v7, "-1"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #lESI:Lcom/taobao/statistic/module/g/b$a;
    check-cast v0, Lcom/taobao/statistic/module/g/b$a;

    .line 109
    .restart local v0       #lESI:Lcom/taobao/statistic/module/g/b$a;
    if-nez v0, :cond_6

    .line 110
    new-instance v2, Lcom/taobao/statistic/module/g/c;

    invoke-direct {v2}, Lcom/taobao/statistic/module/g/c;-><init>()V

    .line 111
    .restart local v2       #lResult:Lcom/taobao/statistic/module/g/c;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/taobao/statistic/module/g/c;->z(Z)V

    .line 112
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/taobao/statistic/module/g/c;->A(Z)V

    .line 113
    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/taobao/statistic/module/g/c;->W(I)V

    .line 114
    monitor-exit v6

    goto/16 :goto_0

    .line 117
    .end local v2           #lResult:Lcom/taobao/statistic/module/g/c;
    :cond_6
    invoke-virtual {p0, v0}, Lcom/taobao/statistic/module/g/b;->a(Lcom/taobao/statistic/module/g/b$a;)Lcom/taobao/statistic/module/g/c;

    move-result-object v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public a(Lcom/taobao/statistic/module/g/b$a;)Lcom/taobao/statistic/module/g/c;
    .locals 4
    .parameter "pESI"

    .prologue
    const/16 v3, 0x64

    .line 42
    new-instance v1, Lcom/taobao/statistic/module/g/c;

    invoke-direct {v1}, Lcom/taobao/statistic/module/g/c;-><init>()V

    .line 43
    .local v1, lResult:Lcom/taobao/statistic/module/g/c;
    if-eqz p1, :cond_0

    .line 44
    invoke-static {p1}, Lcom/taobao/statistic/module/g/b$a;->b(Lcom/taobao/statistic/module/g/b$a;)I

    move-result v2

    if-gt v2, v3, :cond_0

    invoke-static {p1}, Lcom/taobao/statistic/module/g/b$a;->b(Lcom/taobao/statistic/module/g/b$a;)I

    move-result v2

    if-lez v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/taobao/statistic/module/g/b;->oO:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/lit8 v0, v2, 0x64

    .line 47
    .local v0, lRandomValue:I
    invoke-static {p1}, Lcom/taobao/statistic/module/g/b$a;->b(Lcom/taobao/statistic/module/g/b$a;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/module/g/c;->z(Z)V

    .line 49
    invoke-static {p1}, Lcom/taobao/statistic/module/g/b$a;->b(Lcom/taobao/statistic/module/g/b$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/module/g/c;->W(I)V

    .line 55
    .end local v0           #lRandomValue:I
    :goto_0
    return-object v1

    .line 54
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/module/g/c;->z(Z)V

    goto :goto_0
.end method

.method public k(II)V
    .locals 5
    .parameter "eventId"
    .parameter "pCP"

    .prologue
    .line 27
    sget-object v3, Lcom/taobao/statistic/module/g/b;->oL:Ljava/lang/Object;

    monitor-enter v3

    .line 28
    if-ltz p2, :cond_1

    .line 29
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, lKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/statistic/module/g/b;->oM:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/taobao/statistic/module/g/b;->oM:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    new-instance v0, Lcom/taobao/statistic/module/g/b$a;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/module/g/b$a;-><init>(Lcom/taobao/statistic/module/g/b;)V

    .line 34
    .local v0, lESI:Lcom/taobao/statistic/module/g/b$a;
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/module/g/b$a;->V(I)V

    .line 35
    invoke-virtual {v0, p2}, Lcom/taobao/statistic/module/g/b$a;->W(I)V

    .line 36
    iget-object v2, p0, Lcom/taobao/statistic/module/g/b;->oM:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .end local v0           #lESI:Lcom/taobao/statistic/module/g/b$a;
    .end local v1           #lKey:Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
