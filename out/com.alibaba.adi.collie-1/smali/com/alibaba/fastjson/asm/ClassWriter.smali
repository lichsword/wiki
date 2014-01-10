.class public Lcom/alibaba/fastjson/asm/ClassWriter;
.super Ljava/lang/Object;
.source "ClassWriter.java"


# static fields
.field static final ACC_SYNTHETIC_ATTRIBUTE:I = 0x40000

.field static final CLASS:I = 0x7

.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1

.field static final DOUBLE:I = 0x6

.field static final FIELD:I = 0x9

.field static final FIELDORMETH_INSN:I = 0x6

.field static final FLOAT:I = 0x4

.field static final IINC_INSN:I = 0xc

.field static final IMETH:I = 0xb

.field static final IMPLVAR_INSN:I = 0x4

.field static final INT:I = 0x3

.field static final ITFDYNMETH_INSN:I = 0x7

.field static final LABELW_INSN:I = 0x9

.field static final LABEL_INSN:I = 0x8

.field static final LDCW_INSN:I = 0xb

.field static final LDC_INSN:I = 0xa

.field static final LONG:I = 0x5

.field static final LOOK_INSN:I = 0xe

.field static final MANA_INSN:I = 0xf

.field static final METH:I = 0xa

.field static final NAME_TYPE:I = 0xc

.field static final NOARG_INSN:I = 0x0

.field static final SBYTE_INSN:I = 0x1

.field static final SHORT_INSN:I = 0x2

.field static final STR:I = 0x8

.field static final TABL_INSN:I = 0xd

.field static final TYPE:[B = null

.field static final TYPE_INSN:I = 0x5

.field static final TYPE_MERGED:I = 0xf

.field static final TYPE_NORMAL:I = 0xd

.field static final TYPE_UNINIT:I = 0xe

.field static final UTF8:I = 0x1

.field static final VAR_INSN:I = 0x3

.field static final WIDE_INSN:I = 0x10


# instance fields
.field private access:I

.field firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

.field firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

.field index:I

.field private interfaceCount:I

.field private interfaces:[I

.field items:[Lcom/alibaba/fastjson/asm/Item;

.field final key:Lcom/alibaba/fastjson/asm/Item;

.field final key2:Lcom/alibaba/fastjson/asm/Item;

.field final key3:Lcom/alibaba/fastjson/asm/Item;

.field lastField:Lcom/alibaba/fastjson/asm/FieldWriter;

.field lastMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

.field private name:I

.field final pool:Lcom/alibaba/fastjson/asm/ByteVector;

.field private superName:I

.field thisName:Ljava/lang/String;

.field threshold:I

.field typeTable:[Lcom/alibaba/fastjson/asm/Item;

.field version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 343
    const/16 v3, 0xdc

    new-array v0, v3, [B

    .line 344
    .local v0, b:[B
    const-string v2, "AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHHFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII"

    .line 345
    .local v2, s:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 346
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_0
    sput-object v0, Lcom/alibaba/fastjson/asm/ClassWriter;->TYPE:[B

    .line 417
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>(I)V

    .line 425
    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .parameter "flags"

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    .line 435
    new-instance v0, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    .line 436
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/alibaba/fastjson/asm/Item;

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    .line 437
    const-wide/high16 v0, 0x3fe8

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    .line 438
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    .line 439
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    .line 440
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    .line 441
    return-void
.end method

.method private get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .parameter "key"

    .prologue
    .line 668
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    iget v2, p1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 669
    .local v0, i:Lcom/alibaba/fastjson/asm/Item;
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alibaba/fastjson/asm/Item;->type:I

    iget v2, p1, Lcom/alibaba/fastjson/asm/Item;->type:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/Item;->isEqualTo(Lcom/alibaba/fastjson/asm/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 670
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    goto :goto_0

    .line 672
    :cond_1
    return-object v0
.end method

.method private newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 627
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 629
    .local v0, result:Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 630
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 631
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0           #result:Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 632
    .restart local v0       #result:Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 634
    :cond_0
    return-object v0
.end method

.method private put(Lcom/alibaba/fastjson/asm/Item;)V
    .locals 11
    .parameter "i"

    .prologue
    .line 681
    iget v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    if-le v7, v8, :cond_2

    .line 682
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v4, v7

    .line 683
    .local v4, ll:I
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v6, v7, 0x1

    .line 684
    .local v6, nl:I
    new-array v5, v6, [Lcom/alibaba/fastjson/asm/Item;

    .line 685
    .local v5, newItems:[Lcom/alibaba/fastjson/asm/Item;
    add-int/lit8 v3, v4, -0x1

    .local v3, l:I
    :goto_0
    if-ltz v3, :cond_1

    .line 686
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aget-object v1, v7, v3

    .line 687
    .local v1, j:Lcom/alibaba/fastjson/asm/Item;
    :goto_1
    if-eqz v1, :cond_0

    .line 688
    iget v7, v1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    array-length v8, v5

    rem-int v0, v7, v8

    .line 689
    .local v0, index:I
    iget-object v2, v1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 690
    .local v2, k:Lcom/alibaba/fastjson/asm/Item;
    aget-object v7, v5, v0

    iput-object v7, v1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 691
    aput-object v1, v5, v0

    .line 692
    move-object v1, v2

    .line 693
    goto :goto_1

    .line 685
    .end local v0           #index:I
    .end local v2           #k:Lcom/alibaba/fastjson/asm/Item;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 695
    .end local v1           #j:Lcom/alibaba/fastjson/asm/Item;
    :cond_1
    iput-object v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    .line 696
    int-to-double v7, v6

    const-wide/high16 v9, 0x3fe8

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    .line 698
    .end local v3           #l:I
    .end local v4           #ll:I
    .end local v5           #newItems:[Lcom/alibaba/fastjson/asm/Item;
    .end local v6           #nl:I
    :cond_2
    iget v7, p1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    iget-object v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v8, v8

    rem-int v0, v7, v8

    .line 699
    .restart local v0       #index:I
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aget-object v7, v7, v0

    iput-object v7, p1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 700
    iget-object v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aput-object p1, v7, v0

    .line 701
    return-void
.end method

.method private put122(III)V
    .locals 1
    .parameter "b"
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 712
    return-void
.end method


# virtual methods
.method public newClass(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    return v0
.end method

.method newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x7

    .line 563
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 565
    .local v0, result:Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 567
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0           #result:Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 568
    .restart local v0       #result:Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 570
    :cond_0
    return-object v0
.end method

.method newConstItem(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .parameter "cst"

    .prologue
    .line 541
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 542
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v1

    .line 545
    :goto_0
    return-object v1

    .line 543
    .restart local p1
    :cond_0
    instance-of v1, p1, Lcom/alibaba/fastjson/asm/Type;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 544
    check-cast v0, Lcom/alibaba/fastjson/asm/Type;

    .line 545
    .local v0, t:Lcom/alibaba/fastjson/asm/Type;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getSort()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 547
    .end local v0           #t:Lcom/alibaba/fastjson/asm/Type;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .parameter "owner"
    .parameter "name"
    .parameter "desc"

    .prologue
    const/16 v3, 0x9

    .line 587
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v3, p1, p2, p3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 589
    .local v0, result:Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v3, v1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->put122(III)V

    .line 591
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0           #result:Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 592
    .restart local v0       #result:Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 594
    :cond_0
    return-object v0
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .parameter "owner"
    .parameter "name"
    .parameter "desc"
    .parameter "itf"

    .prologue
    .line 608
    if-eqz p4, :cond_1

    const/16 v1, 0xb

    .line 609
    .local v1, type:I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 611
    .local v0, result:Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->put122(III)V

    .line 613
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0           #result:Lcom/alibaba/fastjson/asm/Item;
    iget v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 614
    .restart local v0       #result:Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 616
    :cond_0
    return-object v0

    .line 608
    .end local v0           #result:Lcom/alibaba/fastjson/asm/Item;
    .end local v1           #type:I
    :cond_1
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .parameter "desc"

    .prologue
    .line 638
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    return v0
.end method

.method newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .parameter "name"
    .parameter "desc"

    .prologue
    const/16 v3, 0xc

    .line 650
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, p2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 652
    .local v0, result:Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 653
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v3, v1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->put122(III)V

    .line 654
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0           #result:Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 655
    .restart local v0       #result:Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 657
    :cond_0
    return-object v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 552
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v2, p1, v3, v3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 554
    .local v0, result:Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 555
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 556
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    .end local v0           #result:Lcom/alibaba/fastjson/asm/Item;
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    .line 557
    .restart local v0       #result:Lcom/alibaba/fastjson/asm/Item;
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 559
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    return v1
.end method

.method public toByteArray()[B
    .locals 13

    .prologue
    .line 484
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v8, v9, 0x18

    .line 485
    .local v8, size:I
    const/4 v5, 0x0

    .line 486
    .local v5, nbFields:I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 487
    .local v1, fb:Lcom/alibaba/fastjson/asm/FieldWriter;
    :goto_0
    if-eqz v1, :cond_0

    .line 488
    add-int/lit8 v5, v5, 0x1

    .line 489
    invoke-virtual {v1}, Lcom/alibaba/fastjson/asm/FieldWriter;->getSize()I

    move-result v9

    add-int/2addr v8, v9

    .line 490
    iget-object v1, v1, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_0

    .line 492
    :cond_0
    const/4 v6, 0x0

    .line 493
    .local v6, nbMethods:I
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 494
    .local v4, mb:Lcom/alibaba/fastjson/asm/MethodWriter;
    :goto_1
    if-eqz v4, :cond_1

    .line 495
    add-int/lit8 v6, v6, 0x1

    .line 496
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->getSize()I

    move-result v9

    add-int/2addr v8, v9

    .line 497
    iget-object v4, v4, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_1

    .line 499
    :cond_1
    const/4 v0, 0x0

    .line 500
    .local v0, attributeCount:I
    iget-object v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v9, v9, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v8, v9

    .line 503
    new-instance v7, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>(I)V

    .line 504
    .local v7, out:Lcom/alibaba/fastjson/asm/ByteVector;
    const v9, -0x35014542

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v9

    iget v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->version:I

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 505
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget-object v10, v10, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v12, v12, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-virtual {v9, v10, v11, v12}, Lcom/alibaba/fastjson/asm/ByteVector;->putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 506
    const/high16 v9, 0x6

    iget v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    const/high16 v11, 0x4

    and-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x40

    or-int v3, v9, v10

    .line 507
    .local v3, mask:I
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    xor-int/lit8 v10, v3, -0x1

    and-int/2addr v9, v10

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v9

    iget v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->name:I

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v9

    iget v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->superName:I

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 508
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 509
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    if-ge v2, v9, :cond_2

    .line 510
    iget-object v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    aget v9, v9, v2

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 512
    :cond_2
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 513
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 514
    :goto_3
    if-eqz v1, :cond_3

    .line 515
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/asm/FieldWriter;->put(Lcom/alibaba/fastjson/asm/ByteVector;)V

    .line 516
    iget-object v1, v1, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_3

    .line 518
    :cond_3
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 519
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 520
    :goto_4
    if-eqz v4, :cond_4

    .line 521
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/asm/MethodWriter;->put(Lcom/alibaba/fastjson/asm/ByteVector;)V

    .line 522
    iget-object v4, v4, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_4

    .line 524
    :cond_4
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 525
    iget-object v9, v7, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-object v9
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "version"
    .parameter "access"
    .parameter "name"
    .parameter "superName"
    .parameter "interfaces"

    .prologue
    .line 448
    iput p1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->version:I

    .line 449
    iput p2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    .line 450
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->name:I

    .line 451
    iput-object p3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->thisName:Ljava/lang/String;

    .line 452
    if-nez p4, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->superName:I

    .line 453
    if-eqz p5, :cond_1

    array-length v1, p5

    if-lez v1, :cond_1

    .line 454
    array-length v1, p5

    iput v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    .line 455
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    .line 456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    aget-object v2, p5, v0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 452
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 460
    :cond_1
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;
    .locals 1
    .parameter "access"
    .parameter "name"
    .parameter "desc"

    .prologue
    .line 463
    new-instance v0, Lcom/alibaba/fastjson/asm/FieldWriter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;
    .locals 7
    .parameter "access"
    .parameter "name"
    .parameter "desc"
    .parameter "signature"
    .parameter "exceptions"

    .prologue
    .line 467
    new-instance v0, Lcom/alibaba/fastjson/asm/MethodWriter;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
