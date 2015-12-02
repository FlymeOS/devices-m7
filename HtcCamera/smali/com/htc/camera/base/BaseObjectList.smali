.class public Lcom/htc/camera/base/BaseObjectList;
.super Lcom/htc/camera/base/BaseObject;
.source "BaseObjectList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/htc/camera/base/BaseObject;",
        ">",
        "Lcom/htc/camera/base/BaseObject;",
        "Ljava/util/List",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final m_InternalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public add(ILcom/htc/camera/base/BaseObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p2, Lcom/htc/camera/base/BaseObject;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/base/BaseObjectList;->add(ILcom/htc/camera/base/BaseObject;)V

    return-void
.end method

.method public add(Lcom/htc/camera/base/BaseObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/htc/camera/base/BaseObject;

    invoke-virtual {p0, p1}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Lcom/htc/camera/base/BaseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/BaseObject;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/htc/camera/base/BaseObjectList;->get(I)Lcom/htc/camera/base/BaseObject;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 128
    instance-of v2, v0, Lcom/htc/camera/base/BaseObject;

    if-eqz v2, :cond_0

    .line 129
    check-cast v0, Lcom/htc/camera/base/BaseObject;

    invoke-virtual {v0}, Lcom/htc/camera/base/BaseObject;->release()V

    .line 125
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public remove(I)Lcom/htc/camera/base/BaseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/BaseObject;

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/htc/camera/base/BaseObjectList;->remove(I)Lcom/htc/camera/base/BaseObject;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILcom/htc/camera/base/BaseObject;)Lcom/htc/camera/base/BaseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/base/BaseObject;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p2, Lcom/htc/camera/base/BaseObject;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/base/BaseObjectList;->set(ILcom/htc/camera/base/BaseObject;)Lcom/htc/camera/base/BaseObject;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/htc/camera/base/BaseObjectList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/htc/camera/base/BaseObjectList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/htc/camera/base/BaseObjectList;

    iget-object v1, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/base/BaseObjectList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/base/BaseObjectList;->subList(II)Lcom/htc/camera/base/BaseObjectList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TElement:",
            "Ljava/lang/Object;",
            ">([TTElement;)[TTElement;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/camera/base/BaseObjectList;->m_InternalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
