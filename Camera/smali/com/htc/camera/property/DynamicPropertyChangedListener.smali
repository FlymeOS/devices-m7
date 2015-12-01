.class public abstract Lcom/htc/camera/property/DynamicPropertyChangedListener;
.super Ljava/lang/Object;
.source "DynamicPropertyChangedListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field private final m_Properties:[Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/camera/property/Property",
            "<*>;"
        }
    .end annotation
.end field

.field private final m_PropertyChangedCallbacks:[Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/camera/property/c",
            "<*>;"
        }
    .end annotation
.end field

.field private final m_PropertyDepth:I

.field private final m_PropertyNames:[Ljava/lang/String;

.field private m_Source:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    if-nez p2, :cond_1

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Source:Ljava/lang/Object;

    .line 31
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyDepth:I

    .line 35
    iget v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyDepth:I

    new-array v0, v0, [Lcom/htc/camera/property/Property;

    iput-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Properties:[Lcom/htc/camera/property/Property;

    .line 36
    iget v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyDepth:I

    new-array v0, v0, [Lcom/htc/camera/property/c;

    iput-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyChangedCallbacks:[Lcom/htc/camera/property/c;

    .line 37
    iget v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyDepth:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 40
    iget-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyChangedCallbacks:[Lcom/htc/camera/property/c;

    new-instance v2, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;-><init>(Lcom/htc/camera/property/DynamicPropertyChangedListener;I)V

    aput-object v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->attachPropertyChangedCallback(I)V

    .line 70
    invoke-direct {p0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->getPropertyValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/property/DynamicPropertyChangedListener;)I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyDepth:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/property/DynamicPropertyChangedListener;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/property/DynamicPropertyChangedListener;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 5
    iput-object p1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/camera/property/DynamicPropertyChangedListener;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->detachPropertyChangedCallback(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/property/DynamicPropertyChangedListener;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->attachPropertyChangedCallback(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/property/DynamicPropertyChangedListener;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->getPropertyValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private attachPropertyChangedCallback(I)V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-nez p1, :cond_3

    .line 86
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Source:Ljava/lang/Object;

    .line 100
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/property/Property;

    .line 102
    iget-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Properties:[Lcom/htc/camera/property/Property;

    aput-object v0, v1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyChangedCallbacks:[Lcom/htc/camera/property/c;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 113
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->attachPropertyChangedCallback(I)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Properties:[Lcom/htc/camera/property/Property;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 90
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 91
    :goto_1
    if-nez v0, :cond_2

    goto :goto_0

    .line 90
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

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
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->detachPropertyChangedCallback(I)V

    .line 129
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Properties:[Lcom/htc/camera/property/Property;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Properties:[Lcom/htc/camera/property/Property;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyChangedCallbacks:[Lcom/htc/camera/property/c;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 132
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Properties:[Lcom/htc/camera/property/Property;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private getPropertyValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Properties:[Lcom/htc/camera/property/Property;

    iget v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Properties:[Lcom/htc/camera/property/Property;

    iget v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract onPropertyChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;TTValue;)V"
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Source:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->detachPropertyChangedCallback(I)V

    .line 158
    iput-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_Source:Ljava/lang/Object;

    .line 159
    iput-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;

    goto :goto_0
.end method
