.class public Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AbstractAdapterView.java"


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;)V
    .locals 1

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1045
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 1103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1104
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mDataChanged:Z

    .line 1054
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mOldItemCount:I

    .line 1055
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mItemCount:I

    .line 1059
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    # invokes: Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->access$000(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;Landroid/os/Parcelable;)V

    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1066
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->checkFocus()V

    .line 1067
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->requestLayout()V

    .line 1068
    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1076
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mDataChanged:Z

    .line 1078
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    # invokes: Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->access$100(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mOldItemCount:I

    .line 1086
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iput v3, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mItemCount:I

    .line 1087
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    sget v1, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v1, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 1088
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    sget-wide v1, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v1, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mSelectedRowId:J

    .line 1089
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    sget v1, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v1, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    .line 1090
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    sget-wide v1, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v1, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    .line 1091
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iput-boolean v3, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mNeedSync:Z

    .line 1092
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->checkSelectionChanged()V

    .line 1094
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->checkFocus()V

    .line 1095
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->requestLayout()V

    .line 1096
    return-void
.end method
