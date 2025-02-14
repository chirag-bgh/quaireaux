use quaireaux::sorting::merge_sort;
use quaireaux::utils;
use array::ArrayTrait;

#[test]
#[available_gas(2000000000)]
fn mergesort_test() {
    let mut data = array_new::<u32>();
    data.append(7_u32);
    data.append(4_u32);
    data.append(2_u32);
    data.append(6_u32);
    data.append(1_u32);
    data.append(3_u32);
    data.append(5_u32);
    data.append(8_u32);
    data.append(0_u32);

    let mut correct = array_new::<u32>();
    correct.append(0_u32);
    correct.append(1_u32);
    correct.append(2_u32);
    correct.append(3_u32);
    correct.append(4_u32);
    correct.append(5_u32);
    correct.append(6_u32);
    correct.append(7_u32);
    correct.append(8_u32);

    let mut sorted = merge_sort::mergesort_elements(data);

    assert(utils::is_equal(ref sorted, ref correct, 0_u32) == true, 'invalid result');
}

#[test]
#[available_gas(2000000)]
fn mergesort_test_empty() {
    let mut data = array_new::<u32>();

    let mut correct = array_new::<u32>();

    let mut sorted = merge_sort::mergesort_elements(data);

    assert(utils::is_equal(ref sorted, ref correct, 0_u32) == true, 'invalid result');
}

#[test]
#[available_gas(2000000)]
fn mergesort_test_one_element() {
    let mut data = array_new::<u32>();
    data.append(2_u32);

    let mut correct = array_new::<u32>();
    correct.append(2_u32);

    let mut sorted = merge_sort::mergesort_elements(data);

    assert(utils::is_equal(ref sorted, ref correct, 0_u32) == true, 'invalid result');
}

#[test]
#[available_gas(2000000)]
fn mergesort_test_pre_sorted() {
    let mut data = array_new::<u32>();
    data.append(1_u32);
    data.append(2_u32);
    data.append(3_u32);
    data.append(4_u32);

    let mut correct = array_new::<u32>();
    correct.append(1_u32);
    correct.append(2_u32);
    correct.append(3_u32);
    correct.append(4_u32);

    let mut sorted = merge_sort::mergesort_elements(data);

    assert(utils::is_equal(ref sorted, ref correct, 0_u32) == true, 'invalid result');
}