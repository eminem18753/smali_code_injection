.class public final Lcom/google/android/gms/games/multiplayer/InvitationRef;
.super Lcom/google/android/gms/common/data/zzd;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitation;


# instance fields
.field private final zzaiU:Lcom/google/android/gms/games/Game;

.field private final zzajC:Lcom/google/android/gms/games/multiplayer/ParticipantRef;

.field private final zzajz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzd;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/GameRef;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->zzaiU:Lcom/google/android/gms/games/Game;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->zzajz:Ljava/util/ArrayList;

    const-string v0, "external_inviter_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    new-instance v3, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->zzMd:Lcom/google/android/gms/common/data/DataHolder;

    iget v5, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->zzNQ:I

    add-int/2addr v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/ParticipantRef;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->zzajz:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Must have a valid inviter!"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->zzajC:Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->zza(Lcom/google/android/gms/games/multiplayer/Invitation;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableAutoMatchSlots()I
    .locals 1

    const-string v0, "has_automatch_criteria"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "automatch_max_players"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCreationTimestamp()J
    .locals 4

    const-string v0, "creation_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "last_modified_timestamp"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->zzaiU:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 1

    const-string v0, "external_invitation_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvitationType()I
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->zzajC:Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    return-object v0
.end method

.method public getParticipants()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->zzajz:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVariant()I
    .locals 1

    const-string v0, "variant"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->zza(Lcom/google/android/gms/games/multiplayer/Invitation;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->zzb(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
