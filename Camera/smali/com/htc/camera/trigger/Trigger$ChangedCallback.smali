.class Lcom/htc/camera/trigger/Trigger$ChangedCallback;
.super Ljava/lang/Object;
.source "Trigger.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field private final m_Trigger:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/camera/trigger/Trigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/trigger/Trigger;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/trigger/Trigger$ChangedCallback;->m_Trigger:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/trigger/Trigger$ChangedCallback;->m_Trigger:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/trigger/Trigger;

    .line 35
    if-eqz v0, :cond_2

    .line 37
    iget-object v1, v0, Lcom/htc/camera/trigger/Trigger;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/camera/trigger/Trigger;->value:Ljava/lang/Object;

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/htc/camera/trigger/Trigger;->value:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/htc/camera/trigger/Trigger;->activate()V

    .line 42
    :cond_2
    :goto_0
    return-void

    .line 40
    :cond_3
    invoke-virtual {v0}, Lcom/htc/camera/trigger/Trigger;->deactivate()V

    goto :goto_0
.end method
