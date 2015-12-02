.class public abstract Lcom/htc/camera/widget/ItemBase;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "ItemBase.java"


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private m_Id:I

.field private m_IsEnabled:Z

.field private m_IsSingleLine:Z

.field private m_IsVisible:Z

.field private m_Tag:Ljava/lang/Object;

.field private m_Title:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/htc/camera/widget/ItemBase;->m_IsEnabled:Z

    .line 15
    iput-boolean v0, p0, Lcom/htc/camera/widget/ItemBase;->m_IsVisible:Z

    .line 16
    iput-boolean v0, p0, Lcom/htc/camera/widget/ItemBase;->m_IsSingleLine:Z

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/widget/ItemBase;->m_Context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/widget/ItemBase;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/camera/widget/ItemBase;->m_Id:I

    return v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/widget/ItemBase;->m_Tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/widget/ItemBase;->m_Title:Ljava/lang/Object;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/camera/widget/ItemBase;->m_IsEnabled:Z

    return v0
.end method

.method public final isSingleLine()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/camera/widget/ItemBase;->m_IsSingleLine:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/camera/widget/ItemBase;->m_IsVisible:Z

    return v0
.end method

.method protected onEnabledChanged(Z)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method protected onTitleResourceChanged(I)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected onTitleStringChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected onVisibilityChanged(Z)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/htc/camera/widget/ItemBase;->threadAccessCheck()V

    .line 117
    iget-boolean v0, p0, Lcom/htc/camera/widget/ItemBase;->m_IsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 119
    iput-boolean p1, p0, Lcom/htc/camera/widget/ItemBase;->m_IsEnabled:Z

    .line 120
    invoke-virtual {p0, p1}, Lcom/htc/camera/widget/ItemBase;->onEnabledChanged(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public final setId(I)V
    .locals 0

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/htc/camera/widget/ItemBase;->threadAccessCheck()V

    .line 170
    iput p1, p0, Lcom/htc/camera/widget/ItemBase;->m_Id:I

    .line 171
    return-void
.end method

.method public final setSingleLine(Z)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/htc/camera/widget/ItemBase;->threadAccessCheck()V

    .line 130
    iput-boolean p1, p0, Lcom/htc/camera/widget/ItemBase;->m_IsSingleLine:Z

    .line 131
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/htc/camera/widget/ItemBase;->threadAccessCheck()V

    .line 139
    iput-object p1, p0, Lcom/htc/camera/widget/ItemBase;->m_Tag:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/htc/camera/widget/ItemBase;->threadAccessCheck()V

    .line 157
    iget-object v0, p0, Lcom/htc/camera/widget/ItemBase;->m_Title:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/ItemBase;->m_Title:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 159
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/widget/ItemBase;->m_Title:Ljava/lang/Object;

    .line 160
    invoke-virtual {p0, p1}, Lcom/htc/camera/widget/ItemBase;->onTitleResourceChanged(I)V

    .line 162
    :cond_1
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/htc/camera/widget/ItemBase;->threadAccessCheck()V

    .line 148
    iget-object v0, p0, Lcom/htc/camera/widget/ItemBase;->m_Title:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/ItemBase;->m_Title:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/widget/ItemBase;->m_Title:Ljava/lang/Object;

    .line 151
    invoke-virtual {p0, p1}, Lcom/htc/camera/widget/ItemBase;->onTitleStringChanged(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    return-void
.end method

.method public final setVisibility(Z)V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/htc/camera/widget/ItemBase;->threadAccessCheck()V

    .line 179
    iget-boolean v0, p0, Lcom/htc/camera/widget/ItemBase;->m_IsVisible:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Lcom/htc/camera/widget/ItemBase;->m_IsVisible:Z

    .line 182
    invoke-virtual {p0, p1}, Lcom/htc/camera/widget/ItemBase;->onVisibilityChanged(Z)V

    .line 184
    :cond_0
    return-void
.end method
