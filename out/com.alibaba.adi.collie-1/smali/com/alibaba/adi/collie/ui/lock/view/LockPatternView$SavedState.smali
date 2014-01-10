.class Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayMode:I

.field private final mInStealthMode:Z

.field private final mInputEnabled:Z

.field private final mSerializedPattern:Ljava/lang/String;

.field private final mTactileFeedbackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1217
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState$1;-><init>()V

    .line 1216
    sput-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1225
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 1178
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mDisplayMode:I

    .line 1181
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1182
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1183
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1184
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0
    .parameter "superState"
    .parameter "serializedPattern"
    .parameter "displayMode"
    .parameter "inputEnabled"
    .parameter "inStealthMode"
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1167
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1168
    iput p3, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mDisplayMode:I

    .line 1169
    iput-boolean p4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1170
    iput-boolean p5, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1171
    iput-boolean p6, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1172
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1164
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 1191
    iget v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method public getSerializedPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method public isInputEnabled()Z
    .locals 1

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1208
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1210
    iget v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mInputEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1212
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mInStealthMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1213
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1214
    return-void
.end method
