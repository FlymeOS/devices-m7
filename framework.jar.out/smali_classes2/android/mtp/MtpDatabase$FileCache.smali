.class public Landroid/mtp/MtpDatabase$FileCache;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileCache"
.end annotation


# instance fields
.field mRowId:I

.field miAdded:J

.field miDuration:J

.field miFormat:I

.field miModified:J

.field miOriginalReleaseDate:I

.field miParent:I

.field miSize:J

.field miStorageId:I

.field miTrack:I

.field mszAlbum:Ljava/lang/String;

.field mszAlbumArtist:Ljava/lang/String;

.field mszArtist:Ljava/lang/String;

.field mszComposer:Ljava/lang/String;

.field mszDescription:Ljava/lang/String;

.field mszDisplayName:Ljava/lang/String;

.field mszFullPath:Ljava/lang/String;

.field mszGenre:Ljava/lang/String;

.field mszTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(IIIILjava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V
    .locals 4
    .param p1, "rowId"    # I
    .param p2, "storageId"    # I
    .param p3, "format"    # I
    .param p4, "parent"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "size"    # J
    .param p8, "lastModified"    # J
    .param p10, "szTitle"    # Ljava/lang/String;
    .param p11, "iAdded"    # J
    .param p13, "szAlbumArtist"    # Ljava/lang/String;
    .param p14, "szComposer"    # Ljava/lang/String;
    .param p15, "szDescription"    # Ljava/lang/String;
    .param p16, "iDuration"    # J
    .param p18, "iOriginalReleaseDate"    # I
    .param p19, "iTrack"    # I
    .param p20, "szDisplayName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Landroid/mtp/MtpDatabase$FileCache;->mRowId:I

    .line 113
    iput p2, p0, Landroid/mtp/MtpDatabase$FileCache;->miStorageId:I

    .line 114
    iput-object p5, p0, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    .line 115
    iput-wide p8, p0, Landroid/mtp/MtpDatabase$FileCache;->miModified:J

    .line 116
    iput p3, p0, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    .line 117
    iput-wide p6, p0, Landroid/mtp/MtpDatabase$FileCache;->miSize:J

    .line 118
    iput p4, p0, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    .line 120
    iput-object p10, p0, Landroid/mtp/MtpDatabase$FileCache;->mszTitle:Ljava/lang/String;

    .line 121
    iput-wide p11, p0, Landroid/mtp/MtpDatabase$FileCache;->miAdded:J

    .line 122
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/mtp/MtpDatabase$FileCache;->mszAlbumArtist:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/mtp/MtpDatabase$FileCache;->mszComposer:Ljava/lang/String;

    .line 124
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/mtp/MtpDatabase$FileCache;->mszDescription:Ljava/lang/String;

    .line 125
    move-wide/from16 v0, p16

    iput-wide v0, p0, Landroid/mtp/MtpDatabase$FileCache;->miDuration:J

    .line 126
    move/from16 v0, p18

    iput v0, p0, Landroid/mtp/MtpDatabase$FileCache;->miOriginalReleaseDate:I

    .line 127
    move/from16 v0, p19

    iput v0, p0, Landroid/mtp/MtpDatabase$FileCache;->miTrack:I

    .line 128
    move-object/from16 v0, p20

    iput-object v0, p0, Landroid/mtp/MtpDatabase$FileCache;->mszDisplayName:Ljava/lang/String;

    .line 129
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MtpDatabase$FileCache;->mszAlbum:Ljava/lang/String;

    .line 130
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MtpDatabase$FileCache;->mszArtist:Ljava/lang/String;

    .line 131
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MtpDatabase$FileCache;->mszGenre:Ljava/lang/String;

    .line 132
    return-void
.end method
