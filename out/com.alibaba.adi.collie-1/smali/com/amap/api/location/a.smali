.class public Lcom/amap/api/location/a;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/a$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Z

.field public static c:J

.field public static d:Z

.field public static e:Z

.field private static g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/f;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/amap/api/location/c;

.field private static j:Lcom/amap/api/location/b;

.field private static k:Lcom/amap/api/location/a;


# instance fields
.field private f:Landroid/content/Context;

.field private h:Lcom/amap/api/location/a$a;

.field private l:Lcom/amap/api/location/AMapLocation;

.field private m:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 12
    sput-object v1, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    .line 14
    const/16 v0, 0x64

    sput v0, Lcom/amap/api/location/a;->a:I

    .line 15
    sput-object v1, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    .line 16
    sput-object v1, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    .line 17
    sput-object v1, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/location/a;->b:Z

    .line 22
    sput-boolean v2, Lcom/amap/api/location/a;->d:Z

    .line 23
    sput-boolean v2, Lcom/amap/api/location/a;->e:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a$a;

    .line 27
    iput-object p1, p0, Lcom/amap/api/location/a;->f:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    .line 29
    new-instance v0, Lcom/amap/api/location/a$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/a$a;-><init>(Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a$a;

    .line 30
    iget-object v0, p0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a$a;

    invoke-static {p1, p2, v0}, Lcom/amap/api/location/c;->a(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;)Lcom/amap/api/location/c;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    .line 32
    iget-object v0, p0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a$a;

    invoke-static {p1, v0}, Lcom/amap/api/location/b;->a(Landroid/content/Context;Lcom/amap/api/location/a$a;)Lcom/amap/api/location/b;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    iput-object p1, p0, Lcom/amap/api/location/a;->l:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    sget-object v0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/amap/api/location/a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/a;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    .line 40
    :cond_0
    sget-object v0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/amap/api/location/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/amap/api/location/AMapLocation;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/location/a;->l:Lcom/amap/api/location/AMapLocation;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/e;->c(Landroid/content/Context;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/amap/api/location/f;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/location/f;-><init>(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v0, "gps"

    if-ne p5, v0, :cond_1

    .line 56
    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/c;->a(JFLandroid/location/LocationListener;Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v0, "lbs"

    if-ne p5, v0, :cond_0

    .line 59
    sget-boolean v0, Lcom/amap/api/location/a;->e:Z

    if-eqz v0, :cond_2

    .line 60
    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/c;->a(JFLandroid/location/LocationListener;Ljava/lang/String;)V

    .line 63
    :cond_2
    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/location/b;->a(J)V

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/a;->d:Z

    .line 65
    iget-object v0, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    .line 67
    iget-object v0, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 73
    .line 74
    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v3

    .line 76
    :goto_0
    if-ge v2, v1, :cond_0

    .line 77
    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/f;

    .line 78
    iget-object v4, v0, Lcom/amap/api/location/f;->c:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    sget-object v4, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v1, -0x1

    .line 76
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    invoke-virtual {v0}, Lcom/amap/api/location/c;->a()V

    .line 86
    sput-boolean v3, Lcom/amap/api/location/a;->b:Z

    .line 87
    sput-boolean v3, Lcom/amap/api/location/a;->d:Z

    .line 89
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    sput-boolean p1, Lcom/amap/api/location/a;->e:Z

    .line 93
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    invoke-virtual {v0}, Lcom/amap/api/location/b;->a()V

    .line 98
    sput-object v1, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    .line 100
    :cond_0
    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    invoke-virtual {v0}, Lcom/amap/api/location/c;->a()V

    .line 102
    sput-object v1, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    .line 104
    :cond_1
    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/location/a;->b:Z

    .line 106
    iput-object v1, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    .line 107
    sput-object v1, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    .line 108
    return-void
.end method
