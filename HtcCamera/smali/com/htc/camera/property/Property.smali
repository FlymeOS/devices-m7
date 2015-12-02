.class public Lcom/htc/camera/property/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static m_DefaultLogFlags:I

.field private static printBindingLogs:Z

.field private static printCallbackLogs:Z

.field private static printValueChangedLogs:Z


# instance fields
.field public final flags:I

.field private m_AddingCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/property/c",
            "<-TTValue;>;>;"
        }
    .end annotation
.end field

.field private m_BindingSource:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private m_BindingTargets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_ChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/property/c",
            "<-TTValue;>;>;"
        }
    .end annotation
.end field

.field private final m_CreationThread:Ljava/lang/Thread;

.field private m_IsDestroyed:Z

.field private m_LogFlags:I

.field private final m_OwnerKey:Ljava/lang/Object;

.field private m_RemovingCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/property/c",
            "<-TTValue;>;>;"
        }
    .end annotation
.end field

.field private m_Value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field private volatile m_ValueChangingCounter:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/camera/property/Property;->printBindingLogs:Z

    .line 44
    sput-boolean v1, Lcom/htc/camera/property/Property;->printCallbackLogs:Z

    .line 45
    sput-boolean v1, Lcom/htc/camera/property/Property;->printValueChangedLogs:Z

    .line 52
    sget-boolean v0, Lcom/htc/camera/property/Property;->printBindingLogs:Z

    if-eqz v0, :cond_0

    .line 53
    sget v0, Lcom/htc/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/camera/property/Property;->m_DefaultLogFlags:I

    .line 54
    :cond_0
    sget-boolean v0, Lcom/htc/camera/property/Property;->printCallbackLogs:Z

    if-eqz v0, :cond_1

    .line 55
    sget v0, Lcom/htc/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/camera/property/Property;->m_DefaultLogFlags:I

    .line 56
    :cond_1
    sget-boolean v0, Lcom/htc/camera/property/Property;->printValueChangedLogs:Z

    if-eqz v0, :cond_2

    .line 57
    sget v0, Lcom/htc/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/htc/camera/property/Property;->m_DefaultLogFlags:I

    .line 58
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget v0, Lcom/htc/camera/property/Property;->m_DefaultLogFlags:I

    iput v0, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    .line 95
    if-nez p2, :cond_0

    .line 97
    const-string v0, "name"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 100
    :cond_0
    if-nez p4, :cond_1

    .line 102
    const-string v0, "ownerKey"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 105
    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    if-nez p5, :cond_2

    .line 107
    const-string v0, "Property"

    const-string v1, "FLAG_NOT_NULL flag is set, but initial value is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 110
    :cond_2
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    .line 114
    :cond_3
    iput-object p2, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    .line 115
    iput p3, p0, Lcom/htc/camera/property/Property;->flags:I

    .line 116
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_4

    :goto_0
    iput-object p1, p0, Lcom/htc/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    .line 117
    iput-object p4, p0, Lcom/htc/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    .line 118
    iput-object p5, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 119
    return-void

    .line 116
    :cond_4
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private addBinding(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/property/Property;->addBindingInternal(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/property/Property;->addBindingInternal(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 133
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addBindingInternal(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method private addChangedCallbackInternal(Lcom/htc/camera/property/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/c",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/htc/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot add changed call-back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget v0, p0, Lcom/htc/camera/property/Property;->m_ValueChangingCounter:I

    if-gtz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] add call-back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private bindInternal(Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/property/PropertyBindingMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/property/PropertyBindingMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/htc/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot create binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 246
    :cond_0
    sget-object v0, Lcom/htc/camera/property/Property$1;->$SwitchMap$com$htc$camera$property$PropertyBindingMode:[I

    invoke-virtual {p4}, Lcom/htc/camera/property/PropertyBindingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 250
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -----> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->bindToSource(Lcom/htc/camera/property/Property;)V

    goto :goto_0

    .line 254
    :pswitch_1
    iget v0, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 255
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <----- ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    invoke-direct {p1, p0}, Lcom/htc/camera/property/Property;->bindToSource(Lcom/htc/camera/property/Property;)V

    goto :goto_0

    .line 259
    :pswitch_2
    iget v0, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 260
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <----> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->bindToSource(Lcom/htc/camera/property/Property;)V

    .line 262
    invoke-direct {p1, p0}, Lcom/htc/camera/property/Property;->bindToSource(Lcom/htc/camera/property/Property;)V

    goto/16 :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bindToSource(Lcom/htc/camera/property/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 272
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->bindToSourceInternal(Lcom/htc/camera/property/Property;)V

    .line 281
    :goto_0
    return-void

    .line 276
    :cond_0
    monitor-enter p0

    .line 278
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->bindToSourceInternal(Lcom/htc/camera/property/Property;)V

    .line 279
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bindToSourceInternal(Lcom/htc/camera/property/Property;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingSource:Lcom/htc/camera/property/Property;

    if-eqz v0, :cond_1

    .line 287
    iget v0, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/Property;->m_BindingSource:Lcom/htc/camera/property/Property;

    iget-object v2, v2, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] --/--> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingSource:Lcom/htc/camera/property/Property;

    invoke-direct {v0, p0}, Lcom/htc/camera/property/Property;->removeBinding(Lcom/htc/camera/property/Property;)V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingSource:Lcom/htc/camera/property/Property;

    .line 294
    :cond_1
    if-eqz p1, :cond_2

    .line 296
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-direct {p1, p0, v0}, Lcom/htc/camera/property/Property;->addBinding(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 297
    iput-object p1, p0, Lcom/htc/camera/property/Property;->m_BindingSource:Lcom/htc/camera/property/Property;

    .line 299
    :cond_2
    return-void
.end method

.method public static create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lcom/htc/camera/property/Property;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static destroyAllProperties(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method private removeBinding(Lcom/htc/camera/property/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 612
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 613
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->removeBindingInternal(Lcom/htc/camera/property/Property;)V

    .line 621
    :goto_0
    return-void

    .line 616
    :cond_0
    monitor-enter p0

    .line 618
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->removeBindingInternal(Lcom/htc/camera/property/Property;)V

    .line 619
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeBindingInternal(Lcom/htc/camera/property/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    .line 626
    :cond_0
    return-void
.end method

.method private removeChangedCallbackInternal(Lcom/htc/camera/property/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/c",
            "<-TTValue;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 657
    iget-boolean v0, p0, Lcom/htc/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v2

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 666
    :try_start_0
    iget v0, p0, Lcom/htc/camera/property/Property;->m_ValueChangingCounter:I

    if-gtz v0, :cond_5

    .line 668
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_9

    .line 670
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/property/c;

    .line 671
    if-ne v0, p1, :cond_4

    .line 673
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v2, v0

    .line 688
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    iget v0, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 689
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] remove call-back "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 694
    iput-object v4, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    .line 668
    :cond_4
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 679
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    .line 680
    goto :goto_3

    .line 681
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    .line 685
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 686
    goto :goto_3

    .line 693
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 694
    iput-object v4, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    .line 693
    :cond_8
    throw v0

    :cond_9
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public addChangedCallback(Lcom/htc/camera/property/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/c",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 152
    const-string v0, "callback"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 157
    :cond_0
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/htc/camera/property/Property;->threadAccessCheck()V

    .line 160
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->addChangedCallbackInternal(Lcom/htc/camera/property/c;)V

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_1
    monitor-enter p0

    .line 166
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->addChangedCallbackInternal(Lcom/htc/camera/property/c;)V

    .line 167
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    sget-object v1, Lcom/htc/camera/property/PropertyBindingMode;->OneWay:Lcom/htc/camera/property/PropertyBindingMode;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/property/PropertyBindingMode;)V

    .line 204
    return-void
.end method

.method public final bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/property/PropertyBindingMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/property/PropertyBindingMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 210
    const-string v0, "source"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 213
    :cond_0
    if-ne p1, p0, :cond_1

    .line 215
    const-string v0, "Property"

    const-string v1, "Cannot bind property to self"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/htc/camera/property/Property;->threadAccessCheck()V

    .line 223
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/htc/camera/property/Property;->threadAccessCheck()V

    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/property/Property;->bindInternal(Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/property/PropertyBindingMode;)V

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_2
    monitor-enter p0

    .line 232
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/property/Property;->bindInternal(Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/property/PropertyBindingMode;)V

    .line 233
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final checkOwnerKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final checkValueEquality(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 311
    :goto_0
    return v0

    .line 309
    :cond_0
    if-eqz p1, :cond_1

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected cloneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)TTValue;"
        }
    .end annotation

    .prologue
    .line 360
    instance-of v0, p1, Lcom/htc/camera/x;

    if-eqz v0, :cond_0

    .line 361
    check-cast p1, Lcom/htc/camera/x;

    invoke-interface {p1}, Lcom/htc/camera/x;->clone()Ljava/lang/Object;

    move-result-object p1

    .line 362
    :cond_0
    return-object p1
.end method

.method public final enableLogs(I)V
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    .line 477
    return-void
.end method

.method public equals(Lcom/htc/camera/property/Property;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;)Z"
        }
    .end annotation

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 485
    instance-of v0, p1, Lcom/htc/camera/property/Property;

    if-eqz v0, :cond_0

    .line 486
    check-cast p1, Lcom/htc/camera/property/Property;

    invoke-virtual {p0, p1}, Lcom/htc/camera/property/Property;->equals(Lcom/htc/camera/property/Property;)Z

    move-result v0

    .line 487
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .prologue
    .line 501
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/htc/camera/property/Property;->cloneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final isNull()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isValueEquals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 531
    :goto_0
    return v0

    .line 529
    :cond_0
    if-eqz p1, :cond_1

    .line 530
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 531
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 539
    iget v0, p0, Lcom/htc/camera/property/Property;->m_ValueChangingCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/property/Property;->m_ValueChangingCounter:I

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 546
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0, p2}, Lcom/htc/camera/property/Property;->cloneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 548
    :cond_0
    new-instance v3, Lcom/htc/camera/property/PropertyChangedEventArgs;

    invoke-direct {v3, p0, p1, p2}, Lcom/htc/camera/property/PropertyChangedEventArgs;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 549
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 552
    iget-boolean v0, p0, Lcom/htc/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_2

    .line 554
    const-string v0, "Property"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is destroyed while notifying call-backs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1
    iget v0, p0, Lcom/htc/camera/property/Property;->m_ValueChangingCounter:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_7

    .line 570
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 572
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 573
    iget-object v2, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 572
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/property/c;

    .line 561
    iget v5, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 562
    const-string v5, "Property"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] call-back to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_3
    invoke-interface {v0, p0, v3}, Lcom/htc/camera/property/c;->onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    .line 549
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 574
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_RemovingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 578
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 580
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_6

    .line 581
    iget-object v1, p0, Lcom/htc/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 582
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_AddingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 588
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v0, :cond_8

    .line 590
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 592
    iget-boolean v1, p0, Lcom/htc/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v1, :cond_9

    .line 594
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is destroyed while updating bound properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    :cond_8
    iget v0, p0, Lcom/htc/camera/property/Property;->m_ValueChangingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/property/Property;->m_ValueChangingCounter:I

    .line 605
    return-void

    .line 597
    :cond_9
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/property/Property;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 603
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/htc/camera/property/Property;->m_ValueChangingCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/camera/property/Property;->m_ValueChangingCounter:I

    throw v0
.end method

.method public removeChangedCallback(Lcom/htc/camera/property/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/c",
            "<-TTValue;>;)Z"
        }
    .end annotation

    .prologue
    .line 634
    if-nez p1, :cond_0

    .line 636
    const-string v0, "callback"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 641
    :cond_0
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/htc/camera/property/Property;->threadAccessCheck()V

    .line 644
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->removeChangedCallbackInternal(Lcom/htc/camera/property/c;)Z

    move-result v0

    .line 650
    :goto_0
    return v0

    .line 648
    :cond_1
    monitor-enter p0

    .line 650
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/camera/property/Property;->removeChangedCallbackInternal(Lcom/htc/camera/property/c;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTValue;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 710
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 712
    const-string v0, "Property"

    const-string v1, "Invalid owner key to set value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 717
    :cond_0
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 719
    const-string v0, "Property"

    const-string v1, "Value cannot be NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 724
    :cond_1
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 726
    invoke-virtual {p0}, Lcom/htc/camera/property/Property;->threadAccessCheck()V

    .line 727
    invoke-virtual {p0, p2, v1}, Lcom/htc/camera/property/Property;->setValueInternal(Ljava/lang/Object;Z)Z

    move-result v0

    .line 733
    :goto_0
    return v0

    .line 731
    :cond_2
    monitor-enter p0

    .line 733
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/htc/camera/property/Property;->setValueInternal(Ljava/lang/Object;Z)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setValueInternal(Ljava/lang/Object;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;Z)Z"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 741
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 742
    :cond_2
    const/4 v0, 0x0

    .line 757
    :goto_0
    return v0

    .line 745
    :cond_3
    iget v1, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 746
    invoke-virtual {p0, p1}, Lcom/htc/camera/property/Property;->cloneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 749
    :cond_4
    iput-object p1, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 750
    iget v1, p0, Lcom/htc/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 751
    const-string v1, "Property"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/property/Property;->onValueChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 757
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final threadAccessCheck()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 767
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method protected final verifyOwnerKey(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/htc/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 786
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0

    .line 787
    :cond_0
    return-void
.end method
