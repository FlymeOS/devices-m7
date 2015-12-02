.class Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HtcAdapterView2.java"


# instance fields
.field protected mDataSetListener:Lcom/htc/lib1/cc/widget/o;

.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcAdapterView2;)V
    .locals 1

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 1158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1159
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1097
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iget v1, v1, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mItemCount:I

    iput v1, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mOldItemCount:I

    .line 1098
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mItemCount:I

    .line 1102
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iget v0, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mOldItemCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iget v0, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mItemCount:I

    if-lez v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    # invokes: Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->access$000(Lcom/htc/lib1/cc/widget/HtcAdapterView2;Landroid/os/Parcelable;)V

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1109
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->checkFocus()V

    .line 1110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->requestLayout()V

    .line 1113
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->mDataSetListener:Lcom/htc/lib1/cc/widget/o;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->mDataSetListener:Lcom/htc/lib1/cc/widget/o;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/o;->a()V

    .line 1117
    :cond_0
    return-void

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    .line 1125
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mDataChanged:Z

    .line 1127
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    # invokes: Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->access$100(Lcom/htc/lib1/cc/widget/HtcAdapterView2;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iget v1, v1, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mItemCount:I

    iput v1, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mOldItemCount:I

    .line 1135
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iput v5, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mItemCount:I

    .line 1136
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iput v4, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mSelectedPosition:I

    .line 1137
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iput-wide v2, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mSelectedRowId:J

    .line 1138
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iput v4, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mNextSelectedPosition:I

    .line 1139
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iput-wide v2, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mNextSelectedRowId:J

    .line 1142
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iput-wide v2, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mSelectedColumnId:J

    .line 1143
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iput-wide v2, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mNextSelectedColumnId:J

    .line 1146
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iput-boolean v5, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mNeedSync:Z

    .line 1147
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->checkSelectionChanged()V

    .line 1149
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->checkFocus()V

    .line 1150
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->requestLayout()V

    .line 1151
    return-void
.end method
