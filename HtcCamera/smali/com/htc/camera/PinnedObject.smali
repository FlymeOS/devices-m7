.class public final Lcom/htc/camera/PinnedObject;
.super Ljava/lang/Object;
.source "PinnedObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OBJECT_TYPE_BUFFER:I = 0x1

.field private static final OBJECT_TYPE_BYTE_ARRAY:I = 0x2

.field private static final OBJECT_TYPE_DOUBLE_ARRAY:I = 0x7

.field private static final OBJECT_TYPE_FLOAT_ARRAY:I = 0x6

.field private static final OBJECT_TYPE_INT_ARRAY:I = 0x4

.field private static final OBJECT_TYPE_LONG_ARRAY:I = 0x5

.field private static final OBJECT_TYPE_SHORT_ARRAY:I = 0x3


# instance fields
.field private m_Object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private m_ObjectAddress:J

.field private m_ObjectType:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    instance-of v0, p1, Ljava/nio/Buffer;

    if-eqz v0, :cond_f

    move-object v0, p1

    .line 41
    check-cast v0, Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    move-object v0, p1

    .line 58
    :goto_0
    iget v1, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    if-nez v1, :cond_0

    .line 60
    instance-of v1, v0, [B

    if-eqz v1, :cond_8

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    .line 80
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/htc/camera/PinnedObject;->m_Object:Ljava/lang/Object;

    .line 81
    return-void

    .line 43
    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 44
    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_2
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 46
    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_3
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 48
    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_4
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 50
    check-cast v0, Ljava/nio/LongBuffer;

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->array()[J

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_5
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 52
    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_6
    instance-of v0, p1, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 54
    check-cast v0, Ljava/nio/DoubleBuffer;

    invoke-virtual {v0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :cond_8
    instance-of v1, v0, [S

    if-eqz v1, :cond_9

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    goto :goto_1

    .line 64
    :cond_9
    instance-of v1, v0, [I

    if-eqz v1, :cond_a

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    goto :goto_1

    .line 66
    :cond_a
    instance-of v1, v0, [J

    if-eqz v1, :cond_b

    .line 67
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    goto :goto_1

    .line 68
    :cond_b
    instance-of v1, v0, [F

    if-eqz v1, :cond_c

    .line 69
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    goto :goto_1

    .line 70
    :cond_c
    instance-of v1, v0, [D

    if-eqz v1, :cond_d

    .line 71
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    goto :goto_1

    .line 72
    :cond_d
    if-nez v0, :cond_e

    .line 74
    const-string v0, "obj"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported object type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private native commit(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IJ)V"
        }
    .end annotation
.end method

.method private native getObjectAddress(Ljava/lang/Object;I)J
.end method

.method private native release(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IJ)V"
        }
    .end annotation
.end method


# virtual methods
.method public commit()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/camera/PinnedObject;->m_Object:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 90
    iget-wide v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/camera/PinnedObject;->m_Object:Ljava/lang/Object;

    iget v1, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    iget-wide v2, p0, Lcom/htc/camera/PinnedObject;->m_ObjectAddress:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/camera/PinnedObject;->commit(Ljava/lang/Object;IJ)V

    .line 95
    :cond_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Object is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/htc/camera/PinnedObject;->release()V

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    return-void
.end method

.method public getObjectAddress()J
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/camera/PinnedObject;->m_Object:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 115
    iget-wide v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/camera/PinnedObject;->m_Object:Ljava/lang/Object;

    iget v1, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/PinnedObject;->getObjectAddress(Ljava/lang/Object;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectAddress:J

    .line 117
    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectAddress:J

    return-wide v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Object is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 128
    iget-object v0, p0, Lcom/htc/camera/PinnedObject;->m_Object:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 130
    iget-wide v0, p0, Lcom/htc/camera/PinnedObject;->m_ObjectAddress:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/camera/PinnedObject;->m_Object:Ljava/lang/Object;

    iget v1, p0, Lcom/htc/camera/PinnedObject;->m_ObjectType:I

    iget-wide v2, p0, Lcom/htc/camera/PinnedObject;->m_ObjectAddress:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/camera/PinnedObject;->release(Ljava/lang/Object;IJ)V

    .line 133
    iput-wide v4, p0, Lcom/htc/camera/PinnedObject;->m_ObjectAddress:J

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/PinnedObject;->m_Object:Ljava/lang/Object;

    .line 137
    :cond_1
    return-void
.end method
