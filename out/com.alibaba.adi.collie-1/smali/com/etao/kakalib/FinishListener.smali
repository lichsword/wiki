.class public final Lcom/etao/kakalib/FinishListener;
.super Ljava/lang/Object;
.source "FinishListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final activityToFinish:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activityToFinish"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/etao/kakalib/FinishListener;->activityToFinish:Landroid/app/Activity;

    .line 34
    return-void
.end method

.method private run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etao/kakalib/FinishListener;->activityToFinish:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 48
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialogInterface"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/etao/kakalib/FinishListener;->run()V

    .line 39
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/etao/kakalib/FinishListener;->run()V

    .line 44
    return-void
.end method
