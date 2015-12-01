.class Lcom/htc/camera/property/DynamicPropertyChangedListener$1;
.super Ljava/lang/Object;
.source "DynamicPropertyChangedListener.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

.field final synthetic val$currentDepth:I


# direct methods
.method constructor <init>(Lcom/htc/camera/property/DynamicPropertyChangedListener;I)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    iput p2, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->val$currentDepth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->val$currentDepth:I

    iget-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_PropertyDepth:I
    invoke-static {v1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$000(Lcom/htc/camera/property/DynamicPropertyChangedListener;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    iget-object v1, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    # setter for: Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$102(Lcom/htc/camera/property/DynamicPropertyChangedListener;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    iget-object v1, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->onPropertyChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    iget v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->val$currentDepth:I

    # invokes: Lcom/htc/camera/property/DynamicPropertyChangedListener;->detachPropertyChangedCallback(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$200(Lcom/htc/camera/property/DynamicPropertyChangedListener;I)V

    .line 55
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    iget v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->val$currentDepth:I

    # invokes: Lcom/htc/camera/property/DynamicPropertyChangedListener;->attachPropertyChangedCallback(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$300(Lcom/htc/camera/property/DynamicPropertyChangedListener;I)V

    .line 58
    iget-object v0, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    # invokes: Lcom/htc/camera/property/DynamicPropertyChangedListener;->getPropertyValue()Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$400(Lcom/htc/camera/property/DynamicPropertyChangedListener;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$100(Lcom/htc/camera/property/DynamicPropertyChangedListener;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$100(Lcom/htc/camera/property/DynamicPropertyChangedListener;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$100(Lcom/htc/camera/property/DynamicPropertyChangedListener;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    # getter for: Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$100(Lcom/htc/camera/property/DynamicPropertyChangedListener;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    # setter for: Lcom/htc/camera/property/DynamicPropertyChangedListener;->m_OldPropertyValue:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->access$102(Lcom/htc/camera/property/DynamicPropertyChangedListener;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v2, p0, Lcom/htc/camera/property/DynamicPropertyChangedListener$1;->this$0:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    invoke-virtual {v2, v1, v0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->onPropertyChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
