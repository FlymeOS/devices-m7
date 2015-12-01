.class public Lcom/htc/camera/trigger/Trigger;
.super Lcom/htc/camera/trigger/TriggerBase;
.source "Trigger.java"


# instance fields
.field private m_ChangedCallback:Lcom/htc/camera/trigger/Trigger$ChangedCallback;

.field public final property:Lcom/htc/camera/property/Property;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/camera/trigger/TriggerBase;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 54
    const-string v0, "property"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/trigger/Trigger;->property:Lcom/htc/camera/property/Property;

    .line 60
    iput-object p2, p0, Lcom/htc/camera/trigger/Trigger;->value:Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/htc/camera/trigger/Trigger$ChangedCallback;

    invoke-direct {v0, p0}, Lcom/htc/camera/trigger/Trigger$ChangedCallback;-><init>(Lcom/htc/camera/trigger/Trigger;)V

    iput-object v0, p0, Lcom/htc/camera/trigger/Trigger;->m_ChangedCallback:Lcom/htc/camera/trigger/Trigger$ChangedCallback;

    .line 64
    iget-object v0, p0, Lcom/htc/camera/trigger/Trigger;->m_ChangedCallback:Lcom/htc/camera/trigger/Trigger$ChangedCallback;

    invoke-virtual {p1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 67
    invoke-virtual {p1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 68
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-nez v0, :cond_3

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/trigger/Trigger;->activate()V

    .line 70
    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/trigger/Trigger;->m_ChangedCallback:Lcom/htc/camera/trigger/Trigger$ChangedCallback;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/camera/trigger/Trigger;->property:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/trigger/Trigger;->m_ChangedCallback:Lcom/htc/camera/trigger/Trigger$ChangedCallback;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/trigger/Trigger;->m_ChangedCallback:Lcom/htc/camera/trigger/Trigger$ChangedCallback;

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/trigger/TriggerBase;->destroy()V

    .line 85
    return-void
.end method
