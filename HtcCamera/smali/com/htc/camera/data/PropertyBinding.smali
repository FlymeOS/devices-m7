.class public Lcom/htc/camera/data/PropertyBinding;
.super Lcom/htc/camera/data/Binding;
.source "PropertyBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/camera/data/Binding;"
    }
.end annotation


# instance fields
.field private m_SourcePropertyChangedCallback:Lcom/htc/camera/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/f",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private final m_SourceSetter:Lcom/htc/camera/data/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/data/d",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/f",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private final m_TargetSetter:Lcom/htc/camera/data/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/data/d",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field public final sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field public final targetPropertyKey:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/BindingMode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/data/BindingMode;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/data/PropertyBinding;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;Lcom/htc/camera/data/d;Lcom/htc/camera/data/BindingMode;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/data/d",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v5, 0x0

    sget-object v7, Lcom/htc/camera/data/BindingMode;->ONE_WAY:Lcom/htc/camera/data/BindingMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/data/PropertyBinding;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;Lcom/htc/camera/data/d;Lcom/htc/camera/data/BindingMode;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;Lcom/htc/camera/data/d;Lcom/htc/camera/data/BindingMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/data/d",
            "<TTValue;>;",
            "Lcom/htc/camera/data/d",
            "<TTValue;>;",
            "Lcom/htc/camera/data/BindingMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p3, p7}, Lcom/htc/camera/data/Binding;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/data/BindingMode;)V

    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No source property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p4, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    iput-object p2, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    .line 72
    iput-object p4, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    .line 73
    iput-object p5, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourceSetter:Lcom/htc/camera/data/d;

    .line 74
    iput-object p6, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetSetter:Lcom/htc/camera/data/d;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/data/PropertyBinding;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/camera/data/PropertyBinding;->onSourcePropertyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/data/PropertyBinding;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/camera/data/PropertyBinding;->onTargetPropertyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private onSourcePropertyChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetSetter:Lcom/htc/camera/data/d;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1, p1}, Lcom/htc/camera/base/e;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetSetter:Lcom/htc/camera/data/d;

    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v1, v0, v2, p1}, Lcom/htc/camera/data/d;->setProperty(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onTargetPropertyChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourceSetter:Lcom/htc/camera/data/d;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1, p1}, Lcom/htc/camera/base/e;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourceSetter:Lcom/htc/camera/data/d;

    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v1, v0, v2, p1}, Lcom/htc/camera/data/d;->setProperty(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onActivated()V
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/htc/camera/data/PropertyBinding$5;->$SwitchMap$com$htc$camera$data$BindingMode:[I

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->mode:Lcom/htc/camera/data/BindingMode;

    invoke-virtual {v1}, Lcom/htc/camera/data/BindingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourcePropertyChangedCallback:Lcom/htc/camera/base/f;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/htc/camera/data/PropertyBinding$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/data/PropertyBinding$1;-><init>(Lcom/htc/camera/data/PropertyBinding;)V

    iput-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourcePropertyChangedCallback:Lcom/htc/camera/base/f;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourcePropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 98
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/base/e;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/data/PropertyBinding;->onSourcePropertyChanged(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ------> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/htc/camera/data/PropertyBinding$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/data/PropertyBinding$2;-><init>(Lcom/htc/camera/data/PropertyBinding;)V

    iput-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 115
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/base/e;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/data/PropertyBinding;->onTargetPropertyChanged(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <------ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourcePropertyChangedCallback:Lcom/htc/camera/base/f;

    if-nez v0, :cond_2

    .line 122
    new-instance v0, Lcom/htc/camera/data/PropertyBinding$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/data/PropertyBinding$3;-><init>(Lcom/htc/camera/data/PropertyBinding;)V

    iput-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourcePropertyChangedCallback:Lcom/htc/camera/base/f;

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    if-nez v0, :cond_3

    .line 133
    new-instance v0, Lcom/htc/camera/data/PropertyBinding$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/data/PropertyBinding$4;-><init>(Lcom/htc/camera/data/PropertyBinding;)V

    iput-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourcePropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 143
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 144
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/base/e;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/data/PropertyBinding;->onSourcePropertyChanged(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <-----> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDeactivated()V
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/htc/camera/data/PropertyBinding$5;->$SwitchMap$com$htc$camera$data$BindingMode:[I

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->mode:Lcom/htc/camera/data/BindingMode;

    invoke-virtual {v1}, Lcom/htc/camera/data/BindingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourcePropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 160
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ---/--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 165
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <--/--- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->m_SourcePropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 170
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->m_TargetPropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 171
    iget-object v0, p0, Lcom/htc/camera/data/PropertyBinding;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->sourcePropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <--/--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/data/PropertyBinding;->targetPropertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, v2, Lcom/htc/camera/base/PropertyKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
