.class public abstract Lcom/htc/camera/base/DynamicPropertyChangedListener;
.super Lcom/htc/camera/base/BaseObject;
.source "DynamicPropertyChangedListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/camera/base/BaseObject;"
    }
.end annotation


# instance fields
.field private m_OldPropertyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field private final m_PropertyChangedCallbacks:[Lcom/htc/camera/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/camera/base/f",
            "<*>;"
        }
    .end annotation
.end field

.field private final m_PropertyDepth:I

.field private final m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;"
        }
    .end annotation
.end field

.field private final m_PropertyNames:[Ljava/lang/String;

.field private final m_Sources:[Lcom/htc/camera/base/e;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    if-nez p2, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    .line 33
    iget v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    new-array v0, v0, [Lcom/htc/camera/base/e;

    iput-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    .line 34
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    aput-object p1, v0, v3

    .line 37
    iget v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    new-array v0, v0, [Lcom/htc/camera/base/PropertyKey;

    iput-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    .line 38
    iget v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    new-array v0, v0, [Lcom/htc/camera/base/f;

    iput-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyChangedCallbacks:[Lcom/htc/camera/base/f;

    .line 39
    iget v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 42
    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyChangedCallbacks:[Lcom/htc/camera/base/f;

    new-instance v2, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;-><init>(Lcom/htc/camera/base/DynamicPropertyChangedListener;I)V

    aput-object v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 76
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->attachPropertyChangedCallback(I)V

    .line 77
    invoke-virtual {p0}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->getPropertyValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    iget v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 79
    if-eqz v0, :cond_3

    .line 80
    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    iget v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->onPropertyOwnerOrKeyChanged(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V

    .line 81
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/base/DynamicPropertyChangedListener;)I
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/base/DynamicPropertyChangedListener;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/base/DynamicPropertyChangedListener;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/camera/base/DynamicPropertyChangedListener;)[Lcom/htc/camera/base/e;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/base/DynamicPropertyChangedListener;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->detachPropertyChangedCallback(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/base/DynamicPropertyChangedListener;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->attachPropertyChangedCallback(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/base/DynamicPropertyChangedListener;)[Lcom/htc/camera/base/PropertyKey;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    return-object v0
.end method

.method private attachPropertyChangedCallback(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    if-nez p1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    aget-object v0, v0, p1

    move-object v1, v0

    .line 102
    :goto_1
    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    aput-object v1, v0, p1

    .line 108
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    aget-object v0, v0, v3

    .line 125
    :goto_2
    if-eqz v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyChangedCallbacks:[Lcom/htc/camera/base/f;

    aget-object v2, v2, p1

    invoke-interface {v1, v0, v2}, Lcom/htc/camera/base/e;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 128
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->attachPropertyChangedCallback(I)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 98
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/htc/camera/base/e;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/e;

    move-object v1, v0

    goto :goto_1

    .line 114
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v1, v0}, Lcom/htc/camera/base/PropertyKey;->findByName(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/base/PropertyKey;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    aput-object v0, v2, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private detachPropertyChangedCallback(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->detachPropertyChangedCallback(I)V

    .line 142
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyChangedCallbacks:[Lcom/htc/camera/base/f;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 147
    if-lez p1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    aput-object v3, v0, p1

    .line 150
    :cond_2
    if-lez p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    aput-object v3, v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected final getPropertyValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    iget v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 163
    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    iget v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 164
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/htc/camera/base/e;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<TTValue;>;)V"
        }
    .end annotation
.end method

.method protected onPropertyOwnerOrKeyChanged(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0, v1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->detachPropertyChangedCallback(I)V

    .line 183
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;

    aput-object v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;

    aput-object v2, v0, v1

    .line 187
    iput-object v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;

    .line 190
    invoke-super {p0}, Lcom/htc/camera/base/BaseObject;->release()V

    .line 191
    return-void
.end method
