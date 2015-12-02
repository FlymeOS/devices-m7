.class public abstract Lcom/htc/camera/preferences/PreferenceBinder;
.super Ljava/lang/Object;
.source "PreferenceBinder.java"


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
.field protected final TAG:Ljava/lang/String;

.field private final m_DefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field private m_IsBinding:Z

.field private m_IsSynchronizing:Z

.field private final m_PrefValueChangedHandler:Lcom/htc/camera/event/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/a",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_PropertyChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private final m_PropertyOwnerKey:Ljava/lang/Object;

.field public final preferenceName:Ljava/lang/String;

.field public final property:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field public final settings:Lcom/htc/camera/Settings;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "TTValue;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    .line 30
    new-instance v0, Lcom/htc/camera/preferences/PreferenceBinder$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/preferences/PreferenceBinder$1;-><init>(Lcom/htc/camera/preferences/PreferenceBinder;)V

    iput-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/htc/camera/event/a;

    .line 39
    new-instance v0, Lcom/htc/camera/preferences/PreferenceBinder$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/preferences/PreferenceBinder$2;-><init>(Lcom/htc/camera/preferences/PreferenceBinder;)V

    iput-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_PropertyChangedCallback:Lcom/htc/camera/property/c;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->TAG:Ljava/lang/String;

    .line 61
    if-nez p1, :cond_0

    .line 63
    const-string v0, "settings"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 68
    const-string v0, "preferenceName"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_1
    if-nez p3, :cond_2

    .line 73
    const-string v0, "property"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_2
    iput-object p1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->settings:Lcom/htc/camera/Settings;

    .line 79
    iput-object p2, p0, Lcom/htc/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/htc/camera/preferences/PreferenceBinder;->property:Lcom/htc/camera/property/Property;

    .line 81
    iput-object p5, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_DefaultValue:Ljava/lang/Object;

    .line 82
    iput-object p4, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_PropertyOwnerKey:Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->property:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_PropertyChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 86
    iget-object v0, p1, Lcom/htc/camera/Settings;->preferenceChangedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 89
    invoke-virtual {p0}, Lcom/htc/camera/preferences/PreferenceBinder;->updateFromPreference()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/preferences/PreferenceBinder;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/preferences/PreferenceBinder;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/camera/preferences/PreferenceBinder;->flushToPreference(Ljava/lang/Object;)V

    return-void
.end method

.method private flushToPreference(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/preferences/PreferenceBinder;->setPreferenceValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushToPreference() - Error updating preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateFromPreference(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->property:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_DefaultValue:Ljava/lang/Object;

    .line 125
    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->settings:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getPreferenceValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation
.end method

.method protected setPreferenceValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->settings:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public final unbind()V
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->property:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_PropertyChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 158
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->settings:Lcom/htc/camera/Settings;

    iget-object v0, v0, Lcom/htc/camera/Settings;->preferenceChangedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    goto :goto_0
.end method

.method public updateFromPreference()V
    .locals 4

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_IsBinding:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/preferences/PreferenceBinder;->getPreferenceValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/preferences/PreferenceBinder;->updateFromPreference(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    iget-object v1, p0, Lcom/htc/camera/preferences/PreferenceBinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFromPreference() - Error retrieving preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/preferences/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', use default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    invoke-virtual {p0}, Lcom/htc/camera/preferences/PreferenceBinder;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/preferences/PreferenceBinder;->updateFromPreference(Ljava/lang/Object;)V

    goto :goto_1
.end method
