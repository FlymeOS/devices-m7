.class Lcom/htc/camera/base/DynamicPropertyChangedListener$1;
.super Ljava/lang/Object;
.source "DynamicPropertyChangedListener.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

.field final synthetic val$currentDepth:I


# direct methods
.method constructor <init>(Lcom/htc/camera/base/DynamicPropertyChangedListener;I)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    iput p2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->val$currentDepth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 5

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->val$currentDepth:I

    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I
    invoke-static {v1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$000(Lcom/htc/camera/base/DynamicPropertyChangedListener;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    iget-object v1, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    # setter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$102(Lcom/htc/camera/base/DynamicPropertyChangedListener;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    invoke-virtual {v0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;
    invoke-static {v0}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$200(Lcom/htc/camera/base/DynamicPropertyChangedListener;)[Lcom/htc/camera/base/e;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I
    invoke-static {v1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$000(Lcom/htc/camera/base/DynamicPropertyChangedListener;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 56
    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    iget v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->val$currentDepth:I

    # invokes: Lcom/htc/camera/base/DynamicPropertyChangedListener;->detachPropertyChangedCallback(I)V
    invoke-static {v1, v2}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$300(Lcom/htc/camera/base/DynamicPropertyChangedListener;I)V

    .line 57
    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    iget v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->val$currentDepth:I

    # invokes: Lcom/htc/camera/base/DynamicPropertyChangedListener;->attachPropertyChangedCallback(I)V
    invoke-static {v1, v2}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$400(Lcom/htc/camera/base/DynamicPropertyChangedListener;I)V

    .line 58
    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_Sources:[Lcom/htc/camera/base/e;
    invoke-static {v1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$200(Lcom/htc/camera/base/DynamicPropertyChangedListener;)[Lcom/htc/camera/base/e;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I
    invoke-static {v2}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$000(Lcom/htc/camera/base/DynamicPropertyChangedListener;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 61
    iget-object v2, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    invoke-virtual {v2}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->getPropertyValue()Ljava/lang/Object;

    move-result-object v2

    .line 62
    if-eq v0, v1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    iget-object v3, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;
    invoke-static {v3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$500(Lcom/htc/camera/base/DynamicPropertyChangedListener;)[Lcom/htc/camera/base/PropertyKey;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I
    invoke-static {v4}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$000(Lcom/htc/camera/base/DynamicPropertyChangedListener;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->onPropertyOwnerOrKeyChanged(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$100(Lcom/htc/camera/base/DynamicPropertyChangedListener;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$100(Lcom/htc/camera/base/DynamicPropertyChangedListener;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # setter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$102(Lcom/htc/camera/base/DynamicPropertyChangedListener;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyKeys:[Lcom/htc/camera/base/PropertyKey;
    invoke-static {v1}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$500(Lcom/htc/camera/base/DynamicPropertyChangedListener;)[Lcom/htc/camera/base/PropertyKey;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/base/DynamicPropertyChangedListener;->m_PropertyDepth:I
    invoke-static {v3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->access$000(Lcom/htc/camera/base/DynamicPropertyChangedListener;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    .line 69
    new-instance v3, Lcom/htc/camera/base/PropertyChangeEventArgs;

    invoke-direct {v3, v1, v0, v2}, Lcom/htc/camera/base/PropertyChangeEventArgs;-><init>(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/htc/camera/base/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;->onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V

    goto :goto_0
.end method
