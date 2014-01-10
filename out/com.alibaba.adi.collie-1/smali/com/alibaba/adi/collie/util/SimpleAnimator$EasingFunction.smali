.class public Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;
.super Ljava/lang/Object;
.source "SimpleAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/util/SimpleAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EasingFunction"
.end annotation


# static fields
.field public static final easeInBack:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInBounce:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInCirc:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInCubic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInElastic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInExpo:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutBack:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutBounce:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutCirc:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutCubic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutElastic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutExpo:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutQuad:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutQuart:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutQuint:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInOutSine:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInQuad:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInQuart:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInQuint:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeInSine:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeLinear:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutBack:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutBounce:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutCirc:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutCubic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutElastic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutExpo:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutQuad:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutQuart:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutQuint:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field public static final easeOutSine:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$1;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$1;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeLinear:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 343
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$2;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$2;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInQuad:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 352
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$3;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$3;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutQuad:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 361
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$4;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$4;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutQuad:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 373
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$5;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$5;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInCubic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 382
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$6;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$6;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutCubic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 391
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$7;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$7;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutCubic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 403
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$8;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$8;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInQuart:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 412
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$9;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$9;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutQuart:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 421
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$10;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$10;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutQuart:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 433
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$11;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$11;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInQuint:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 442
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$12;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$12;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutQuint:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 451
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$13;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$13;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutQuint:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 461
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$14;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$14;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInSine:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 470
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$15;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$15;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutSine:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 479
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$16;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$16;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutSine:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 488
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$17;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$17;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInExpo:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 497
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$18;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$18;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutExpo:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 506
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$19;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$19;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutExpo:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 518
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$20;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$20;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInCirc:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 527
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$21;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$21;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutCirc:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 536
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$22;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$22;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutCirc:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 546
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$23;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$23;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInElastic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 573
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$24;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$24;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutElastic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 600
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$25;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$25;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutElastic:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 634
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$26;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$26;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInBack:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 645
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$27;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$27;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutBack:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 656
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$28;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$28;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutBack:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 671
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$29;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$29;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInBounce:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 680
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$30;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$30;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeOutBounce:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 697
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$31;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction$31;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeInOutBounce:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 707
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
