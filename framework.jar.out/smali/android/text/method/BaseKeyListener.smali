.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/BaseKeyListener$1;
    }
.end annotation


# static fields
.field static final OLD_SEL_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 186
    return-void
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    .prologue
    .line 71
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    and-int/lit16 v9, v9, -0xf4

    invoke-static {v9}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 73
    const/4 v9, 0x0

    .line 141
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return v9

    .line 77
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    const/4 v9, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v9, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v9, v1}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 83
    invoke-direct/range {p0 .. p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 84
    const/4 v9, 0x1

    goto :goto_0

    .line 89
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 92
    .local v6, "start":I
    instance-of v9, p1, Landroid/widget/TextView;

    if-eqz v9, :cond_4

    const-string v9, "htc.delete.rmallcombiningmarks"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v3, 0x1

    .line 95
    .local v3, "isDeleteAllCombiningMarks":Z
    :goto_1
    if-nez p5, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 97
    :cond_3
    move-object/from16 v0, p2

    invoke-static {v0, v6}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 100
    .local v2, "end":I
    if-eqz v3, :cond_6

    .line 101
    move v5, v2

    .line 103
    .local v5, "old":I
    if-eqz p2, :cond_5

    .line 104
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "str":Ljava/lang/String;
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 106
    .local v8, "tp":Landroid/text/TextPaint;
    if-eqz v8, :cond_5

    invoke-virtual {v7, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_5

    .line 107
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 108
    .local v4, "len":I
    :goto_2
    if-ge v2, v4, :cond_5

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v7, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-nez v9, :cond_5

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    .end local v2    # "end":I
    .end local v3    # "isDeleteAllCombiningMarks":Z
    .end local v4    # "len":I
    .end local v5    # "old":I
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "tp":Landroid/text/TextPaint;
    .restart local p1    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 112
    .end local p1    # "view":Landroid/view/View;
    .restart local v2    # "end":I
    .restart local v3    # "isDeleteAllCombiningMarks":Z
    .restart local v5    # "old":I
    :cond_5
    if-eq v2, v5, :cond_6

    .line 113
    const-string v9, "BaseKeyListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "offset refine, new="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", old="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v5    # "old":I
    :cond_6
    :goto_3
    if-eq v6, v2, :cond_a

    .line 138
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 139
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 116
    .end local v2    # "end":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p2

    invoke-static {v0, v6}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 119
    .restart local v2    # "end":I
    if-eqz v3, :cond_6

    .line 120
    move v5, v2

    .line 122
    .restart local v5    # "old":I
    if-eqz p2, :cond_9

    .line 123
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    .restart local v7    # "str":Ljava/lang/String;
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 125
    .restart local v8    # "tp":Landroid/text/TextPaint;
    if-eqz v8, :cond_9

    invoke-virtual {v7, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-nez v9, :cond_9

    .line 126
    :goto_4
    if-lez v2, :cond_8

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v10, v9

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-nez v9, :cond_8

    .line 127
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 129
    :cond_8
    if-lez v2, :cond_9

    .line 130
    add-int/lit8 v2, v2, -0x1

    .line 133
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "tp":Landroid/text/TextPaint;
    :cond_9
    if-eq v2, v5, :cond_6

    .line 134
    const-string v9, "BaseKeyListener"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "offset refine 2, new="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", old="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 141
    .end local v5    # "old":I
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    .line 160
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 161
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 162
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    .line 163
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 164
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 165
    .local v3, "start":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 166
    .local v0, "end":I
    if-eq v0, v3, :cond_0

    .line 167
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 168
    const/4 v4, 0x1

    .line 172
    .end local v0    # "end":I
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "start":I
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .prologue
    .line 145
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 146
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 147
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_0

    .line 148
    move v2, v0

    .line 149
    .local v2, "temp":I
    move v0, v1

    .line 150
    move v1, v2

    .line 152
    .end local v2    # "temp":I
    :cond_0
    if-eq v1, v0, :cond_1

    .line 153
    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 154
    const/4 v3, 0x1

    .line 156
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    .prologue
    .line 176
    const/4 v0, 0x1

    .line 177
    .local v0, "contentType":I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 188
    :goto_0
    if-eqz p1, :cond_0

    .line 189
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 191
    :cond_0
    return v0

    .line 179
    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    .line 180
    goto :goto_0

    .line 182
    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    .line 183
    goto :goto_0

    .line 185
    :pswitch_2
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 53
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 65
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 197
    sparse-switch p3, :sswitch_data_0

    .line 205
    const/4 v0, 0x0

    .line 209
    .local v0, "handled":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 210
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 215
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 199
    .end local v0    # "handled":Z
    :sswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 200
    .restart local v0    # "handled":Z
    goto :goto_0

    .line 202
    .end local v0    # "handled":Z
    :sswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 203
    .restart local v0    # "handled":Z
    goto :goto_0

    .line 215
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 223
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v4

    .line 229
    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 230
    .local v1, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 231
    .local v0, "selectionEnd":I
    if-ge v0, v1, :cond_2

    .line 232
    move v2, v0

    .line 233
    .local v2, "temp":I
    move v0, v1

    .line 234
    move v1, v2

    .line 237
    .end local v2    # "temp":I
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 242
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 243
    const/4 v4, 0x1

    goto :goto_0
.end method
