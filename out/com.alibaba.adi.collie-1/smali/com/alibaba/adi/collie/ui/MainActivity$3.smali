.class Lcom/alibaba/adi/collie/ui/MainActivity$3;
.super Landroid/os/CountDownTimer;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;JJ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    .line 188
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$13(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$13(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 199
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 192
    return-void
.end method
