.class Landroid/taobao/taskmanager/TaskManager$TaskManagerHolder;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/taskmanager/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskManagerHolder"
.end annotation


# static fields
.field public static sInstance:Landroid/taobao/taskmanager/TaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/taobao/taskmanager/TaskManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/taobao/taskmanager/TaskManager;-><init>(Landroid/taobao/taskmanager/TaskManager$1;)V

    sput-object v0, Landroid/taobao/taskmanager/TaskManager$TaskManagerHolder;->sInstance:Landroid/taobao/taskmanager/TaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
