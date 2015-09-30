<table class="table">
    <thead>
    <th>Score</th>
    <th>Team</th>
    <th>home</th>
    <th>draw</th>
    <th>away</th>
    </thead>
    <tbody>
    <?php foreach($dataHistory as $item) : ?>
        <tr>
            <td>
                <?=$item['score']; ?>
            </td>
            <td>
                <?=$item['team']; ?>
            </td>
            <td>
                <?=$item['home']; ?>
            </td>
            <td>
                <?=$item['draw']; ?>
            </td>
            <td>
                <?=$item['away']; ?>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>