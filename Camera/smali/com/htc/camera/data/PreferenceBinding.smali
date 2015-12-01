.class public abstract Lcom/htc/camera/data/PreferenceBinding;
.super Lcom/htc/camera/data/Binding;
.source "PreferenceBinding.java"


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
.field private m_EventHandler:Lcom/htc/camera/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/PreferenceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsSynchronizing:Z

.field private m_PropertyChangedCallback:Lcom/htc/camera/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/f",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private final m_PropertySetter:Lcom/htc/camera/data/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/data/d",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field public final preferenceName:Ljava/lang/String;

.field public final propertyKey:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/data/PreferenceBinding;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/data/d",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/htc/camera/data/BindingMode;->TWO_WAY:Lcom/htc/camera/data/BindingMode;

    invoke-direct {p0, p1, p3, v0}, Lcom/htc/camera/data/Binding;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/data/BindingMode;)V

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No preference name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p4, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput-object p2, p0, Lcom/htc/camera/data/PreferenceBinding;->preferenceName:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/htc/camera/data/PreferenceBinding;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    .line 61
    iput-object p5, p0, Lcom/htc/camera/data/PreferenceBinding;->m_PropertySetter:Lcom/htc/camera/data/d;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/data/PreferenceBinding;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/htc/camera/data/PreferenceBinding;->m_IsSynchronizing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/data/PreferenceBinding;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/camera/data/PreferenceBinding;->flushToPreference(Ljava/lang/Object;)V

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
    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/data/PreferenceBinding;->setPreferenceValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/htc/camera/data/PreferenceBinding;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushToPreference() - Error updating preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/data/PreferenceBinding;->preferenceName:Ljava/lang/String;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->m_PropertySetter:Lcom/htc/camera/data/d;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PreferenceBinding;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1, p1}, Lcom/htc/camera/base/e;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/data/PreferenceBinding;->m_PropertySetter:Lcom/htc/camera/data/d;

    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v2, p0, Lcom/htc/camera/data/PreferenceBinding;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v1, v0, v2, p1}, Lcom/htc/camera/data/d;->setProperty(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getDefaultValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/data/PreferenceBinding;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPreferenceValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation
.end method

.method protected onActivated()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->m_EventHandler:Lcom/htc/camera/base/b;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/htc/camera/data/PreferenceBinding$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/data/PreferenceBinding$1;-><init>(Lcom/htc/camera/data/PreferenceBinding;)V

    iput-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->m_EventHandler:Lcom/htc/camera/base/b;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->m_PropertyChangedCallback:Lcom/htc/camera/base/f;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/htc/camera/data/PreferenceBinding$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/data/PreferenceBinding$2;-><init>(Lcom/htc/camera/data/PreferenceBinding;)V

    iput-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->m_PropertyChangedCallback:Lcom/htc/camera/base/f;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    sget-object v1, Lcom/htc/camera/Settings;->EVENT_PREFERENCE_CHANGED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/data/PreferenceBinding;->m_EventHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/Settings;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 143
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PreferenceBinding;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PreferenceBinding;->m_PropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 144
    invoke-virtual {p0}, Lcom/htc/camera/data/PreferenceBinding;->updateFromPreference()V

    .line 145
    return-void
.end method

.method protected onDeactivated()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    sget-object v1, Lcom/htc/camera/Settings;->EVENT_PREFERENCE_CHANGED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/data/PreferenceBinding;->m_EventHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/Settings;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 154
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/base/e;

    iget-object v1, p0, Lcom/htc/camera/data/PreferenceBinding;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/data/PreferenceBinding;->m_PropertyChangedCallback:Lcom/htc/camera/base/f;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/base/e;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 155
    return-void
.end method

.method protected setPreferenceValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/camera/data/PreferenceBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/data/PreferenceBinding;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method protected updateFromPreference()V
    .locals 4

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/htc/camera/data/PreferenceBinding;->m_IsSynchronizing:Z

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/data/PreferenceBinding;->m_IsSynchronizing:Z

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/data/PreferenceBinding;->getPreferenceValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/data/PreferenceBinding;->updateFromPreference(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/data/PreferenceBinding;->m_IsSynchronizing:Z

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    iget-object v1, p0, Lcom/htc/camera/data/PreferenceBinding;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFromPreference() - Error retrieving preference \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/data/PreferenceBinding;->preferenceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', use default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    invoke-virtual {p0}, Lcom/htc/camera/data/PreferenceBinding;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/data/PreferenceBinding;->updateFromPreference(Ljava/lang/Object;)V

    goto :goto_1
.end method
